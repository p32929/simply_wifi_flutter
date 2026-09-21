![Simply Wifi Flutter](https://user-images.githubusercontent.com/6418354/104330981-c2c1f800-5518-11eb-84a0-7ab9e0b97354.png)

# simply_wifi

A simplified Flutter wrapper around [wifi_iot](https://pub.dev/packages/wifi_iot) — turn WiFi on/off, list networks, connect by SSID or index, and forget a network, each in one line.

On pub.dev: **[simply_wifi](https://pub.dev/packages/simply_wifi)**

[![pub version](https://badgen.net/pub/v/simply_wifi)](https://pub.dev/packages/simply_wifi)

## Features

- **One-line calls** for every common WiFi action — no listener plumbing
- **Scan and connect** by SSID, or by index into the scanned list
- **Forget a saved network** by SSID or index
- **Futures everywhere** (except `disconnectWifi()`), so `await` works as you'd expect
- Asks for the location permission it needs during `init()`

## How to use

First of all:
* You need to set the `compileSdkVersion`and `targetSdkVersion` to `28` in `android/app/build.gradle` ( or you may call it the App Level Gradle file )
* It won't work properly in v29 ( Android 10 or above )

#### Initialize the package

`SimplyWifi.init();`

> You MUST call the init() function before calling any other functions in this package. By initializing, you will also be asked for the location permission.

#### Turn on wifi dynamically

`SimplyWifi.turnOnWifi();`

#### Turn off wifi dynamically

`SimplyWifi.turnOffWifi();`

#### Get the list of Wifis

`List<WifiNetwork> _wifiNetworks = SimplyWifi.getListOfWifis();`

#### Connect a wifi from _wifiNetworks list by index

```
int indexNumber = 0;
String passwordOfTheWifi = "I-dont-know";
SimplyWifi.connectWifiByIndex(indexNumber, password: passwordOfTheWifi);
```

> After you call the getListOfWifis(), it gives you a `List` of WiFis around you. Now, if you want to connect any of the wifi, from the list, you can just pass the index number of the `List` element & it will connect the wifi.
> Notice that, if the Wifi is secured, you have to pass the password parameter.

#### Connect a wifi by its name ( SSID )

```
String wifiName = "WifiName";
SimplyWifi.connectWifiByName(wifiName, password: passwordOfTheWifi);
```

> Notice that, if the Wifi is secured, you have to pass the password parameter.

#### Disconnect the wifi

`SimplyWifi.disconnectWifi();`

#### Forget wifi by its name ( SSID )

`SimplyWifi.forgetWifiByWifiName(wifiName);`

#### Forget a wifi from _wifiNetworks list by index

`SimplyWifi.forgetWifiByIndex(index)`

## Footnote

All the functions ( except `SimplyWifi.disconnectWifi()` ) returns a future. So, you can call them like this:

```dart
SimplyWifi.anyFunctionMentionedABove(necessaryParameters).then((value){
  // do something when done
})
```

or

```dart
await SimplyWifi.anyFunctionMentionedAbove(necessaryParameters);
// do something when done
```

## Thanks

I hope, you will enjoy using the library. Feel free to contribute codes.

## License

MIT License — Copyright (c) 2020 Fayaz Bin Salam. See [LICENSE](LICENSE) for the full text.

## Contributing

Contributions are warmly welcomed and greatly appreciated! Whether it's a bug fix, new feature, or improvement, your input helps make this project better for everyone.

Before submitting a pull request, please:

1. Create an issue describing the feature or bug fix you'd like to work on
2. Wait for discussion and approval to ensure alignment with project goals
3. Fork the repository and create your feature branch
4. Submit your pull request with a clear description of changes

This approach helps avoid duplicate efforts and ensures smooth collaboration. Thank you for considering contributing!

## Share

Sharing this repository with your friends is just one click away from here

[![facebook](https://user-images.githubusercontent.com/6418354/179013321-ac1d1452-0689-493f-9066-940cf2302b6e.png)](https://www.facebook.com/sharer/sharer.php?u=https://github.com/p32929/simply_wifi_flutter/)
[![twitter](https://user-images.githubusercontent.com/6418354/179013351-7d8d6d1c-4ce2-46ab-bef8-4c4765a1b888.png)](https://twitter.com/intent/tweet?url=https://github.com/p32929/simply_wifi_flutter/)
[![tumblr](https://user-images.githubusercontent.com/6418354/179013343-3111f55a-3b90-40c7-8487-9777348672b0.png)](https://www.tumblr.com/share?v=3&u=https://github.com/p32929/simply_wifi_flutter/)
[![pocket](https://user-images.githubusercontent.com/6418354/179013334-b095c45f-becf-49f4-9ee1-5a731a9b1f85.png)](https://getpocket.com/save?url=https://github.com/p32929/simply_wifi_flutter/)
[![pinterest](https://user-images.githubusercontent.com/6418354/179013331-44cd9206-11b1-4b65-becb-5863b61c828f.png)](https://pinterest.com/pin/create/button/?url=https://github.com/p32929/simply_wifi_flutter/)
[![reddit](https://user-images.githubusercontent.com/6418354/179013338-7416ae3f-73ba-4522-86e1-1374d7082d22.png)](https://www.reddit.com/submit?url=https://github.com/p32929/simply_wifi_flutter/)
[![linkedin](https://user-images.githubusercontent.com/6418354/179013327-ca7b7102-1da8-4b1c-858f-1a6e5f21bd70.png)](https://www.linkedin.com/shareArticle?mini=true&url=https://github.com/p32929/simply_wifi_flutter/)
[![whatsapp](https://user-images.githubusercontent.com/6418354/179013353-f477fa0b-3e6f-4138-a357-c9991b23ff88.png)](https://api.whatsapp.com/send?text=https://github.com/p32929/simply_wifi_flutter/)

---

## Support

If this saved you time, you can buy me a coffee — it keeps these projects maintained and free. Other payment options: https://p32929.github.io/SendMoney2Me/

[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20me%20a%20coffee-%E2%98%95-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=black)](https://www.buymeacoffee.com/p32929)

<!-- hire-block -->

---

## 💼 Need this customised — or need it yesterday?

I take fixed-price Flutter work on my own projects. No hourly billing, no surprise scope:

| | |
|---|---|
| **Drop-in integration** — I wire this into your codebase and hand you a PR that builds | **$45** · 3 days |
| **Priority bug fix or small feature** — jumps ahead of the free issue queue | **$95** · 72 hours |
| **Custom build** — branded, packaged and deployed, source yours | **$130** · 7 days |
| **A full app from scratch** | **from $350** · quoted first |

All prices and how to buy → **[p32929.github.io/hire](https://p32929.github.io/hire/)**  
Or buy through [Fiverr](https://www.fiverr.com/fayazbinsalam) (escrow, ID-verified, 5.0★) — safest for a first job.

Scoping and quotes are free: [open an issue](https://github.com/p32929/hire/issues/new) and describe the job.
