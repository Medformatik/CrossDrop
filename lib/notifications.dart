import 'dart:convert'; // For jsonEncode/Decode
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:crossdrop/nearby_share/api/models.dart'; // For TransferMetadata

const String channelId = 'nearby_share_channel';
const String channelName = 'Nearby Share Transfers';
const String channelDescription = 'Notifications for incoming file transfers';
const String transferCategory = 'INCOMING_TRANSFERS'; // Matches iOS category ID

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

// Callback type for when a notification action is tapped
typedef NotificationActionCallback =
    void Function(String connectionId, bool accepted);

NotificationActionCallback? _onNotificationAction;

Future<void> initializeNotifications(
  NotificationActionCallback onAction,
) async {
  _onNotificationAction = onAction;

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  // Configure Darwin (iOS & macOS) initialization and request permissions
  final DarwinInitializationSettings
  initializationSettingsDarwin = // Rename for clarity
      DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    notificationCategories: [
      DarwinNotificationCategory(
        transferCategory,
        actions: <DarwinNotificationAction>[
          DarwinNotificationAction.plain(
            'ACCEPT',
            'Accept',
            options: {DarwinNotificationActionOption.authenticationRequired},
          ),
          DarwinNotificationAction.plain('DECLINE', 'Decline'),
        ],
        options: <DarwinNotificationCategoryOption>{},
      ),
    ],
  );

  // TODO: Add Linux initialization if needed

  // *** ADD macOS parameter here ***
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsDarwin, // Pass the Darwin settings for iOS
    macOS:
        initializationSettingsDarwin, // Pass the SAME Darwin settings for macOS
    // linux: initializationSettingsLinux,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings, // Pass the combined settings
    onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  );

  // Request notification permissions on Android 13+ explicitly
  final androidPermissions =
      flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();
  await androidPermissions?.requestNotificationsPermission();

  // Request permissions on macOS explicitly using the plugin (needed for macOS 10.14+)
  // iOS permissions are requested via DarwinInitializationSettings during initialize
  final macOSPermissions =
      flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin
          >();
  await macOSPermissions?.requestPermissions(
    alert: true,
    badge: true,
    sound: true,
  );
}

// --- Notification Display ---

Future<void> showTransferNotification(
  TransferMetadata transfer,
  RemoteDeviceInfo device,
) async {
  String body;
  final pinSnippet =
      transfer.pinCode != null ? "PIN: ${transfer.pinCode}\n" : "";
  if (transfer.textDescription != null) {
    body =
        "$pinSnippet${device.name} is sending you text: ${transfer.textDescription}";
  } else if (transfer.files.length == 1) {
    body =
        "$pinSnippet${device.name} is sending you: ${transfer.files[0].name}";
  } else {
    body =
        "$pinSnippet${device.name} is sending ${transfer.files.length} files";
  }

  // Include connectionId in the payload for action handling
  final payload = jsonEncode({'connectionId': transfer.id});

  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
        channelId,
        channelName,
        channelDescription: channelDescription,
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
        actions: <AndroidNotificationAction>[
          AndroidNotificationAction(
            'ACCEPT',
            'Accept',
          ), // ID must match Darwin action ID
          AndroidNotificationAction(
            'DECLINE',
            'Decline',
          ), // ID must match Darwin action ID
        ],
      );
  const DarwinNotificationDetails iosPlatformChannelSpecifics =
      DarwinNotificationDetails(
        categoryIdentifier:
            transferCategory, // Use the defined category for actions
        presentAlert: true,
        presentSound: true,
      );

  const NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iosPlatformChannelSpecifics,
  );

  // Use connectionId or a derivative as the notification ID (needs to be int)
  // Using hashcode is simple but not guaranteed unique, better to manage IDs if needed
  final notificationId = transfer.id.hashCode % 2147483647;

  await flutterLocalNotificationsPlugin.show(
    notificationId,
    'Incoming Share', // Title
    body,
    platformChannelSpecifics,
    payload: payload,
  );
}

Future<void> showErrorNotification(
  String connectionId,
  RemoteDeviceInfo? device,
  String errorMsg,
) async {
  final deviceName = device?.name ?? "Unknown device";
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
        channelId, // Reuse channel
        channelName,
        channelDescription: channelDescription,
        importance: Importance.defaultImportance,
        priority: Priority.defaultPriority,
        ticker: 'ticker',
      );
  const DarwinNotificationDetails iosPlatformChannelSpecifics =
      DarwinNotificationDetails(); // No actions needed

  const NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iosPlatformChannelSpecifics,
  );

  final notificationId = ("${connectionId}_error").hashCode % 2147483647;

  await flutterLocalNotificationsPlugin.show(
    notificationId,
    'Transfer Failed',
    'Failed to receive files from $deviceName: $errorMsg',
    platformChannelSpecifics,
  );
}

Future<void> cancelNotification(String connectionId) async {
  final notificationId = connectionId.hashCode % 2147483647;
  await flutterLocalNotificationsPlugin.cancel(notificationId);
  // Also cancel potential error notification for the same transfer
  final errorNotificationId = ("${connectionId}_error").hashCode % 2147483647;
  await flutterLocalNotificationsPlugin.cancel(errorNotificationId);
}

// --- Notification Action Handlers ---
// Handler for when a notification response is received while the app is running (foreground or background)
void onDidReceiveNotificationResponse(
  NotificationResponse notificationResponse,
) async {
  final String? payload = notificationResponse.payload;
  final String? actionId = notificationResponse.actionId;
  print('Notification response: action="$actionId", payload="$payload"');

  if (payload != null && actionId != null) {
    try {
      final data = jsonDecode(payload);
      final connectionId = data['connectionId'] as String?;
      if (connectionId != null) {
        final accepted = actionId == 'ACCEPT';
        print(
          'Calling notification action callback for $connectionId, accepted: $accepted',
        );
        _onNotificationAction?.call(connectionId, accepted);
      }
    } catch (e) {
      print('Error decoding notification payload: $e');
    }
  }
}

// Handler for when the app is opened from a notification tap (when terminated)
@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  // This runs in a separate isolate. Basic handling is possible,
  // but complex state updates require inter-isolate communication.
  // For simplicity, we'll primarily rely on onDidReceiveNotificationResponse.
  print(
    'Notification tapped from background/terminated state: ${notificationResponse.payload}',
  );
  // Potentially store the payload/action and process when the main app starts.
}
