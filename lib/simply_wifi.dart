import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';

class SimplyWifi {
  static List<WifiNetwork> _wifiNetworks = [];
  static bool _isEnabled = false;
  static bool _isConnected = false;

  static void _showWifiSsids() {
    for (int i = 0; i < _wifiNetworks.length; i++) {
      print("${i.toString()} -- ${_wifiNetworks[i].ssid}");
    }
    print("Done");
  }

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

  static Future<bool> turnOnWifi() async {
    if (!_isEnabled) {
      _isEnabled = true;
      await WiFiForIoTPlugin.setEnabled(true);
      return Future.value(true);
    }
    return Future.value(false);
  }

  static Future<bool> turnOffWifi() async {
    if (_isEnabled) {
      _isEnabled = false;
      await WiFiForIoTPlugin.setEnabled(false);
      return Future.value(true);
    }
    return Future.value(true);
  }

  static Future<List<WifiNetwork>> getListOfWifis() async {
    try {
      _wifiNetworks = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      _wifiNetworks = List<WifiNetwork>();
    }
    _showWifiSsids();
    return Future.value(_wifiNetworks);
  }

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

  static disconnectWifi() {
    WiFiForIoTPlugin.disconnect();
  }
}
