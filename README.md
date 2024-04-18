**CrossDrop** is a partial implementation of [Google's Quick Share](https://blog.google/products/android/how-to-use-quick-share-android/) in Flutter for macOS, iOS and Linux.

CrossDrop is based on [NearDrop](https://github.com/grishka/NearDrop), a Swift implementation of Nearby Share for macOS.

> [!IMPORTANT]
> **⚠️ This is a work in progress. It is not yet feature-complete, and it is not yet stable. It is not yet ready for use.**

> [!NOTE]
> As far as I find time I am working on the first version for testing. The current status can be seen in the [dev branch](https://github.com/Medformatik/CrossDrop/tree/dev). At the moment I cannot estimate how long I will need until the first release.

[Protocol documentation](https://github.com/grishka/NearDrop/blob/master/PROTOCOL.md) is available in the NearDrop repository.

The app lives in your menu bar and saves files to your downloads folder.

ℹ️ Getting CrossDrop to work on iOS has the least priority, first getting it to work on Linux is the goal. 

📈 Since this project has gotten more attention, I will try very hard to release a working version as soon as possible. While much of the UI is ready so far, I'm currently working on the Quick Share feature itself. After that, I still need to implement notifications.

## Limitations

* **Receive only**. For now. I haven't yet figured out how to make Android turn on the MDNS service and/or show the "a device nearby is sharing" notification.
* **Wi-Fi LAN only**. Your Android device and your Mac need to be on the same network for this app to work. Google's implementation supports multiple mediums, including Wi-Fi Direct, Wi-Fi hotspot, Bluetooth, some kind of 5G peer-to-peer connection, and even a WebRTC-based protocol that goes over the internet through Google servers. Wi-Fi direct isn't supported on macOS (Apple has their own, incompatible, AWDL thing, used in AirDrop). Bluetooth needs further reverse engineering.
* **Visible to everyone on your network at all times** while the app is running. Limited visibility (contacts etc) requires talking to Google servers, and becoming temporarily visible requires listening for whatever triggers the "device nearby is sharing" notification.

## Contributing

Contributions are welcome! Please open an issue or a pull request.

## FAQ

### Why does this exist next to NearDrop?

NearDrop is a Swift implementation of Nearby Share for macOS. It therefore only works on macOS. CrossDrop is a Flutter implementation of Nearby Share. It serves the same purpose, but works on more platforms. This way, Nearby Share can also be used on Linux and iOS.

### Why not the other way around, i.e. AirDrop on Android?

While I am an Android developer, and I have looked into this, this is nigh-impossible. AirDrop uses [AWDL](https://stackoverflow.com/questions/19587701/what-is-awdl-apple-wireless-direct-link-and-how-does-it-work), Apple's own proprietary take on peer-to-peer Wi-Fi. This works on top of 802.11 itself, the low-level Wi-Fi protocol, and thus can not be implemented without messing around with the Wi-Fi adapter drivers and raw packets and all that. It might be possible on Android, but it would at the very least require root and possibly a custom kernel. There is [an open-source implementation of AWDL and AirDrop for Linux](https://owlink.org/code/).
