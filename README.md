![Simply Wifi Flutter](https://www.flaticon.com/svg/vstatic/svg/929/929464.svg?token=exp=1610464009~hmac=257e54da522112452691f1f4831713e8)

A simplified version of the Wifi Iot package.
( This is a wrapper for the https://pub.dev/packages/wifi_iot package )

Here's the github repository link: https://github.com/p32929/simply_wifi_flutter
Feel free to star, fork and send pull requests. You're welcome.

[![](https://badgen.net/github/release/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/release/p32929/simply_wifi_flutter/stable)]() [![](https://badgen.net/github/tag/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/watchers/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/checks/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/status/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/stars/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/forks/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/issues/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/open-issues/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/closed-issues/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/label-issues/p32929/simply_wifi_flutter/help-wanted/open)]() [![](https://badgen.net/github/prs/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/open-prs/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/closed-prs/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/merged-prs/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/commits/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/last-commit/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/branches/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/releases/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/tags/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/license/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/contributors/p32929/simply_wifi_flutter)]() [![](https://badgen.net/github/dependents-pkg/p32929/simply_wifi_flutter)]() [![](https://badgen.net/pub/v/simply_wifi)]() [![](https://badgen.net/pub/likes/simply_wifi)]() [![](https://badgen.net/pub/sdk-version/simply_wifi)]() [![](https://badgen.net/pub/flutter-platform/simply_wifi)]()

## Share

Sharing with your friends is just one click away from here

[![facebook](https://image.flaticon.com/icons/png/32/124/124010.png)](https://www.facebook.com/sharer/sharer.php?u=https://github.com/p32929/simply_wifi_flutter)
[![twitter](https://image.flaticon.com/icons/png/32/124/124021.png)](https://twitter.com/intent/tweet?source=https://github.com/p32929/simply_wifi_flutter)
[![tumblr](https://image.flaticon.com/icons/png/32/124/124012.png)](https://www.tumblr.com/share?v=3&u=https://github.com/p32929/simply_wifi_flutter)
[![pocket](https://image.flaticon.com/icons/png/32/732/732238.png)](https://getpocket.com/save?url=https://github.com/p32929/simply_wifi_flutter)
[![pinterest](https://image.flaticon.com/icons/png/32/124/124039.png)](https://pinterest.com/pin/create/button/?url=https://github.com/p32929/simply_wifi_flutter)
[![reddit](https://image.flaticon.com/icons/png/32/2111/2111589.png)](https://www.reddit.com/submit?url=https://github.com/p32929/simply_wifi_flutter)
[![linkedin](https://image.flaticon.com/icons/png/32/1409/1409945.png)](https://www.linkedin.com/shareArticle?mini=true&url=https://github.com/p32929/simply_wifi_flutter)
[![whatsapp](https://image.flaticon.com/icons/png/32/733/733585.png)](https://api.whatsapp.com/send?text=https://github.com/p32929/simply_wifi_flutter)

## Support

If you like my works and want to support me/my works, feel free to support or donate. My payment details can be found here: https://p32929.github.io/SendMoney2Me/

### How to use

#### Initialize the package

`SimplyWifi.init();`

> You MUST call the init() function before calling any other functions in this package. By initializing, you will also be asked for the location permission.

#### Turn on wifi dynamically

`SimplyWifi.turnOnWifi();`

#### Turn off wifi dynamically

`SimplyWifi.turnOffWifi();`

#### Get the list of Wifis

`List<WifiNetwork> _wifiNetworks = SimplyWifi.getListOfWifis();`

#### Connect a wifi from \_wifiNetworks list by index

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

#### Thanks

I hope, you will enjoy using the library. Feel free to contribute codes.

#### License

```
MIT License

Copyright (c) 2020 Fayaz Bin Salam

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
