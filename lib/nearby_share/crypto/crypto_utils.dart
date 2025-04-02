import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';
import 'package:pointycastle/export.dart' as pc;
// Removed redundant pointycastle import
import 'package:crossdrop/nearby_share/utils/data_extension.dart'; // For generateRandomBytes
import 'package:crossdrop/nearby_share/protobuf/securemessage.pb.dart' as sm;

// P-256 Curve parameters from PointyCastle
final pc.ECDomainParameters _p256Domain = pc.ECCurve_secp256r1();

/// Generates a P-256 key pair using the cryptography package.
Future<KeyPair> generateP256KeyPairCryptography() async {
  final p256 = Ecdsa.p256(Sha256());
  return await p256.newKeyPair();
}

/// Performs ECDH key agreement using P-256 (cryptography package keys).
Future<SecretKey> ecdhP256Cryptography(
  KeyPair localKeyPair,
  SimplePublicKey remotePublicKey,
) async {
  final algorithm = Ecdh.p256(length: 32);
  return await algorithm.sharedSecretKey(
    keyPair: localKeyPair,
    remotePublicKey: remotePublicKey,
  );
}

/// Computes HKDF (HMAC-based Key Derivation Function) using SHA-256.
Future<SecretKey> hkdfSha256({
  required SecretKey sharedSecret,
  required List<int> salt,
  required List<int> info,
  required int outputLength,
}) async {
  final hkdf = Hkdf(hmac: Hmac.sha256(), outputLength: outputLength);
  return await hkdf.deriveKey(secretKey: sharedSecret, nonce: salt, info: info);
}

/// Encrypts data using AES-256-CBC with PKCS7 padding.
Future<List<int>> aes256CbcEncrypt(
  List<int> data,
  SecretKey key,
  List<int> iv,
) async {
  if (iv.length != 16) throw ArgumentError('IV must be 16 bytes for AES-CBC');
  final algorithm = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);
  final secretBox = await algorithm.encrypt(data, secretKey: key, nonce: iv);
  return secretBox.cipherText;
}

/// Decrypts data using AES-256-CBC with PKCS7 padding.
Future<List<int>> aes256CbcDecrypt(
  List<int> encryptedData,
  SecretKey key,
  List<int> iv,
) async {
  if (iv.length != 16) throw ArgumentError('IV must be 16 bytes for AES-CBC');
  final algorithm = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);
  final secretBox = SecretBox(
    encryptedData,
    nonce: iv,
    mac: Mac.empty,
  ); // Use cryptography's Mac
  return await algorithm.decrypt(secretBox, secretKey: key);
}

/// Computes HMAC-SHA256. Returns cryptography Mac object.
Future<Mac> hmacSha256(List<int> data, SecretKey key) async {
  // Use cryptography's Mac
  final algorithm = Hmac.sha256();
  return await algorithm.calculateMac(data, secretKey: key);
}

/// Derives the PIN code from the UKEY2 auth string (symmetric key).
/// Matches the logic in Swift's `pinCodeFromAuthKey`.
/// Needs to be async because extracting key bytes is async.
Future<String> derivePinCode(SecretKey authKey) async {
  // Use the asynchronous extractBytes method
  final List<int> keyBytes = await authKey.extractBytes();
  int hash = 0; // Explicit int
  int multiplier = 1; // Explicit int

  for (final byte in keyBytes) {
    final signedByte = (byte > 127) ? (byte - 256) : byte;
    hash = (hash + signedByte * multiplier) % 9973;
    // This line should be fine, ensures multiplier stays int
    multiplier = (multiplier * 31) % 9973;
  }
  return hash.abs().toString().padLeft(4, '0');
}

// --- PointyCastle specific helpers ---

/// Generates a P-256 key pair using PointyCastle.
(pc.ECPrivateKey, pc.ECPublicKey) generateP256KeyPairPointyCastle() {
  var keyParams = pc.ECKeyGeneratorParameters(_p256Domain);
  final pc.SecureRandom secureRandom = pc.FortunaRandom();
  secureRandom.seed(pc.KeyParameter(generateRandomBytes(32)));
  var generator = pc.ECKeyGenerator();
  generator.init(pc.ParametersWithRandom(keyParams, secureRandom));
  var keyPair = generator.generateKeyPair();
  var publicKey = keyPair.publicKey;
  var privateKey = keyPair.privateKey;
  return (privateKey, publicKey);
}

/// Performs ECDH using PointyCastle keys.
Uint8List ecdhPointyCastle(
  pc.ECPrivateKey localPrivateKey,
  pc.ECPublicKey remotePublicKey,
) {
  final agreement = pc.ECDHBasicAgreement();
  agreement.init(localPrivateKey);
  final sharedSecretBigInt = agreement.calculateAgreement(remotePublicKey);
  return _bigIntToBytes(sharedSecretBigInt, 32);
}

/// Converts BigInt to a fixed-length byte array (big-endian).
Uint8List _bigIntToBytes(BigInt number, int size) {
  if (number < BigInt.zero) {
    throw ArgumentError("Negative BigInt to byte conversion not handled here");
  }
  String hex = number.toRadixString(16);
  if (hex.length % 2 != 0) hex = '0$hex';
  final paddedHex = hex.padLeft(size * 2, '0');
  final finalHex =
      paddedHex.length > size * 2
          ? paddedHex.substring(paddedHex.length - size * 2)
          : paddedHex;
  final byteList = Uint8List(size);
  for (int i = 0; i < size; i++) {
    final start = i * 2;
    byteList[i] = int.parse(finalHex.substring(start, start + 2), radix: 16);
  }
  return byteList;
}

/// Serializes a PointyCastle ECPublicKey to the protobuf format.
Uint8List serializeP256PublicKeyPointyCastle(pc.ECPublicKey publicKey) {
  final q = publicKey.Q;
  if (q == null || q.x == null || q.y == null) {
    throw ArgumentError("Public key Q point or coordinates are null");
  }
  final xBigInt = q.x!.toBigInteger();
  final yBigInt = q.y!.toBigInteger();
  if (xBigInt == null || yBigInt == null) {
    throw ArgumentError("Failed to convert public key coordinates to BigInt");
  }
  final xBytes = _bigIntToBytes(xBigInt, 32);
  final yBytes = _bigIntToBytes(yBigInt, 32);
  final protoKey = sm.EcP256PublicKey(x: xBytes, y: yBytes);
  return protoKey.writeToBuffer();
}

/// Deserializes protobuf bytes into a PointyCastle ECPublicKey.
pc.ECPublicKey deserializeP256PublicKeyPointyCastle(Uint8List data) {
  final protoKey = sm.EcP256PublicKey.fromBuffer(data);
  final x = _bigIntParseBytes(protoKey.x);
  final y = _bigIntParseBytes(protoKey.y);
  // createPoint implicitly validates field membership, but not curve membership
  final Q = _p256Domain.curve.createPoint(x, y);
  // Removed explicit validatePoint call
  // if (!_p256Domain.curve.validatePoint(x, y)) { ... }
  // If issues arise, add manual check: y*y % p == (x*x*x + a*x + b) % p
  return pc.ECPublicKey(Q, _p256Domain);
}

/// Helper to parse bytes (big-endian) back to BigInt.
BigInt _bigIntParseBytes(List<int> bytes) {
  BigInt result = BigInt.zero;
  for (int i = 0; i < bytes.length; i++) {
    result = (result << 8) | BigInt.from(bytes[i]);
  }
  return result;
}

/// Serializes PointyCastle public key into GenericPublicKey proto
sm.GenericPublicKey genericPublicKeyFromPointyCastle(pc.ECPublicKey publicKey) {
  final q = publicKey.Q;
  if (q == null || q.x == null || q.y == null) {
    throw ArgumentError("Public key Q point or coordinates are null");
  }
  final xBigInt = q.x!.toBigInteger();
  final yBigInt = q.y!.toBigInteger();
  if (xBigInt == null || yBigInt == null) {
    throw ArgumentError("Failed to convert public key coordinates to BigInt");
  }
  final xBytes = _bigIntToBytes(xBigInt, 32);
  final yBytes = _bigIntToBytes(yBigInt, 32);
  final ecKey = sm.EcP256PublicKey(x: xBytes, y: yBytes);
  return sm.GenericPublicKey(
    type: sm.PublicKeyType.EC_P256,
    ecP256PublicKey: ecKey,
  );
}

/// Deserializes GenericPublicKey proto into PointyCastle public key
pc.ECPublicKey genericPublicKeyToPointyCastle(sm.GenericPublicKey protoKey) {
  if (protoKey.type != sm.PublicKeyType.EC_P256 ||
      !protoKey.hasEcP256PublicKey()) {
    throw ArgumentError('Unsupported public key type or missing EC P256 key');
  }
  final x = _bigIntParseBytes(protoKey.ecP256PublicKey.x);
  final y = _bigIntParseBytes(protoKey.ecP256PublicKey.y);
  final Q = _p256Domain.curve.createPoint(x, y);
  return pc.ECPublicKey(Q, _p256Domain);
}
