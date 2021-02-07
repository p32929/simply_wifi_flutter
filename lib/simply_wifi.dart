import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';

class SimplyWifi {
  static List<WifiNetwork> _wifiNetworks = List<WifiNetwork>();
  static bool _isEnabled = false;
  static bool _isConnected = false;

  //
  static void _showWifiSsids() {
    for (int i = 0; i < _wifiNetworks.length; i++) {
      print("${i.toString()} -- ${_wifiNetworks[i].ssid}");
    }
    print("Done");
  }

  // Init the lib. It is a must
  static Future<bool> init() async {
    _isEnabled = await WiFiForIoTPlugin.isEnabled();
    _isConnected = await WiFiForIoTPlugin.isConnected();

    try {
      _wifiNetworks = await WiFiForIoTPlugin.loadWifiList();
      _showWifiSsids();
      return Future.value(true);
    } on PlatformException {
      _wifiNetworks = List<WifiNetwork>();
      _showWifiSsids();
      return Future.value(false);
    }
  }

  // Turn on wifi dynamically
  static Future<bool> turnOnWifi() async {
    if (!_isEnabled) {
      _isEnabled = true;
      await WiFiForIoTPlugin.setEnabled(true);
      return Future.value(true);
    }
    return Future.value(false);
  }

  // Turn off wifi dynamically
  static Future<bool> turnOffWifi() async {
    if (_isEnabled) {
      _isEnabled = false;
      await WiFiForIoTPlugin.setEnabled(false);
      return Future.value(true);
    }
    return Future.value(true);
  }

  // Get a list of wifis
  static Future<List<WifiNetwork>> getListOfWifis() async {
    try {
      _wifiNetworks = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      _wifiNetworks = List<WifiNetwork>();
    }
    _showWifiSsids();
    return Future.value(_wifiNetworks);
  }

  // Connect wifi from the _wifiNetworks list by index
  static Future<bool> connectWifiByIndex(int index, {String password}) async {
    _isConnected = await WiFiForIoTPlugin.connect(_wifiNetworks[index].ssid,
        security: NetworkSecurity.WPA, password: password);

    if (_isConnected) {
      print("Connected");
      return Future.value(true);
    } else {
      print("Failed to connect");
      return Future.value(false);
    }
  }

  // Connect wifi by name (SSID)
  static Future<bool> connectWifiByName(String wifiName,
      {String password}) async {
    _isConnected = await WiFiForIoTPlugin.connect(wifiName,
        security: NetworkSecurity.WPA, password: password);

    if (_isConnected) {
      print("Connected");
      return Future.value(true);
    } else {
      print("Failed to connect");
      return Future.value(false);
    }
  }

  // Disconnect a wifi
  static void disconnectWifi() {
    WiFiForIoTPlugin.disconnect();
  }

  // Forget a wifi by its name ( SSID )
  static forgetWifiByWifiName(String wifiName) {
    return WiFiForIoTPlugin.removeWifiNetwork(wifiName);
  }

  // Forget wifi from the _wifiNetworks list by index
  static forgetWifiByIndex(int index) {
    return WiFiForIoTPlugin.removeWifiNetwork(_wifiNetworks[index].ssid);
  }
}
