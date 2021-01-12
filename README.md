## Simply Wifi Flutter
A simplified version of the Wifi Iot package.
( This is a wrapper for the https://pub.dev/packages/wifi_iot package )

Here's the github repository link: https://github.com/p32929/simply_wifi_flutter
Feel free to star, fork and send pull requests. You're welcome.

# How to use
### Initialize the package
`SimplyWifi.init();`

> By initializing, you also ask for location permission.

### Turn on wifi dynamically
`SimplyWifi.turnOnWifi();`

### Turn off wifi dynamically
`SimplyWifi.turnOffWifi();`

### Get the list of Wifis
`List<WifiNetwork> _wifiNetworks = SimplyWifi.getListOfWifis();`

### Connect a wifi from _wifiNetworks list by index
```
int indexNumber = 0;
String passwordOfTheWifi = "I-dont-know";
SimplyWifi.connectWifiByIndex(indexNumber, password: passwordOfTheWifi);
```

### Connect a wifi by its name ( SSID )
```
String wifiName = "WifiName";
SimplyWifi.connectWifiByName(wifiName, password: passwordOfTheWifi);
```

### Disconnect the wifi
`SimplyWifi.disconnectWifi();`