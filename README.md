![Simply Wifi Flutter](https://user-images.githubusercontent.com/6418354/104330981-c2c1f800-5518-11eb-84a0-7ab9e0b97354.png)

# simply_wifi

A simple Flutter package to control WiFi on Android. The [wifi_iot](https://pub.dev/packages/wifi_iot) package can do a lot, but even simple jobs need a fair bit of code. simply_wifi wraps it so that turning WiFi on or off, scanning, connecting and forgetting a network each take one line.

On pub.dev: **[simply_wifi](https://pub.dev/packages/simply_wifi)**

[![pub version](https://badgen.net/pub/v/simply_wifi)](https://pub.dev/packages/simply_wifi)

> **An old package.** It was made in 2020 for Flutter before null safety, and it is marked as discontinued on pub.dev. It only works for apps that target Android 9 (API 28). It is kept here as it was.

## Features

1. **One line for each WiFi job:** turn on, turn off, scan, connect, disconnect and forget.
2. **Connect by name or by list position.** Use the network's name (SSID), or its index in the list you just scanned.
3. **Forget a saved network** by name or by index.
4. **Works with `await`.** Most calls return a `Future`.
5. **Asks for the location permission** it needs when you call `init()`.

## Install

Add it to `pubspec.yaml`:

```yaml
dependencies:
  simply_wifi: ^1.0.5
```

Then set `compileSdkVersion` and `targetSdkVersion` to `28` in `android/app/build.gradle`. It does not work properly when the app targets Android 10 (API 29) or newer.

## How to use

1. Call `init()` first. It also asks for the location permission.

```dart
await SimplyWifi.init();
```

2. Turn WiFi on or off.

```dart
await SimplyWifi.turnOnWifi();
await SimplyWifi.turnOffWifi();
```

3. Get the list of networks around you.

```dart
List<WifiNetwork> wifiNetworks = await SimplyWifi.getListOfWifis();
```

4. Connect to a network from that list by its index. Pass the password if the network has one.

```dart
await SimplyWifi.connectWifiByIndex(0, password: "the-password");
```

5. Or connect by the network's name (SSID).

```dart
await SimplyWifi.connectWifiByName("WifiName", password: "the-password");
```

6. Disconnect.

```dart
SimplyWifi.disconnectWifi();
```

7. Forget a saved network by name, or by its index in the scanned list.

```dart
SimplyWifi.forgetWifiByWifiName("WifiName");
SimplyWifi.forgetWifiByIndex(0);
```

`init`, `turnOnWifi`, `turnOffWifi`, `getListOfWifis`, `connectWifiByIndex` and `connectWifiByName` return a `Future`, so you can `await` them or use `.then(...)`.

## License

MIT License — Copyright (c) 2020 Fayaz Bin Salam. See [LICENSE](LICENSE) for the full text.

## Contributing

Contributions are very welcome, thank you! Before you start on a pull request, please open an issue and tell me what you would like to add or change. That way we can agree on it first, and your time is not wasted on something that might not fit. Thanks for helping make simply_wifi better.

## You might also like

<p><a href="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/0"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/0-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/0-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (1)"></picture></a><a href="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/1"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/1-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/1-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (2)"></picture></a><br><a href="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/2"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/2-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/2-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (3)"></picture></a><a href="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/3"><picture><source media="(prefers-color-scheme: dark)" srcset="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/3-dark.svg"><img src="https://openstore.pfay.workers.dev/more/p32929/simply_wifi_flutter/3-light.svg" width="50%" align="top" alt="More apps by p32929 on OpenStore (4)"></picture></a></p>

<p><a href="https://p32929.github.io/share/?repo=simply_wifi_flutter"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-share-dark.svg"><img src="https://p32929.github.io/readme/footer-share-light.svg" width="50%" align="top" alt="Share this project with your friends in one click"></picture></a><a href="https://p32929.github.io/support/"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-support-dark.svg"><img src="https://p32929.github.io/readme/footer-support-light.svg" width="50%" align="top" alt="If you like my work and want to support me, feel free to support"></picture></a><br><a href="https://openstore.pfay.workers.dev/add"><picture><source media="(prefers-color-scheme: dark)" srcset="https://p32929.github.io/readme/footer-join-dark.svg"><img src="https://p32929.github.io/readme/footer-join-light.svg" width="100%" align="top" alt="Put your own apps on OpenStore: free, your listing lives in your own repo"></picture></a></p>
