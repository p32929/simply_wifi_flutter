## Simply Wifi Flutter

A simplified version of the Wifi Iot package.
( This is a wrapper for the https://pub.dev/packages/wifi_iot package )

Here's the github repository link: https://github.com/p32929/simply_wifi_flutter
Feel free to star, fork and send pull requests. You're welcome.

# How to use

### Initialize the package

`SimplyWifi.init();`

> You MUST call the init() function before calling any other functions in this package. By initializing, you will also be asked for the location permission.

### Turn on wifi dynamically

`SimplyWifi.turnOnWifi();`

### Turn off wifi dynamically

`SimplyWifi.turnOffWifi();`

### Get the list of Wifis

`List<WifiNetwork> _wifiNetworks = SimplyWifi.getListOfWifis();`

### Connect a wifi from \_wifiNetworks list by index

```
int indexNumber = 0;
String passwordOfTheWifi = "I-dont-know";
SimplyWifi.connectWifiByIndex(indexNumber, password: passwordOfTheWifi);
```

> After you call the getListOfWifis(), it gives you a `List` of WiFis around you. Now, if you want to connect any of the wifi, from the list, you can just pass the index number of the `List` element & it will connect the wifi.
> Notice that, if the Wifi is secured, you have to pass the password parameter.

### Connect a wifi by its name ( SSID )

```
String wifiName = "WifiName";
SimplyWifi.connectWifiByName(wifiName, password: passwordOfTheWifi);
```

> Notice that, if the Wifi is secured, you have to pass the password parameter.

### Disconnect the wifi

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
