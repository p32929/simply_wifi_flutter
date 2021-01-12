import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';

class SimplyWifi {
  static List<WifiNetwork> _wifiNetworks = [];
  static bool _isEnabled = false;
  static bool _isConnected = false;

  static _showWifiSsids() {
    for (int i = 0; i < _wifiNetworks.length; i++) {
      print("${i.toString()} -- ${_wifiNetworks[i].ssid}");
    }
  }

  static init() async {
    _isEnabled = await WiFiForIoTPlugin.isEnabled();
    _isConnected = await WiFiForIoTPlugin.isConnected();
    try {
      _wifiNetworks = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      _wifiNetworks = List<WifiNetwork>();
    }
    _showWifiSsids();
  }

  static turnOnWifi() {
    if (!_isEnabled) {
      WiFiForIoTPlugin.setEnabled(true);
    }
    print("ON");
  }

  static turnOffWifi() {
    if (_isEnabled) {
      WiFiForIoTPlugin.setEnabled(false);
    }
    print("OFF");
  }

  static getListOfWifis() async {
    try {
      _wifiNetworks = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      _wifiNetworks = List<WifiNetwork>();
    }
    _showWifiSsids();
    return _wifiNetworks;
  }

  static connectWifiByIndex(int index, {String password}) async {
    _isConnected = await WiFiForIoTPlugin.connect(_wifiNetworks[index].ssid,
        security: NetworkSecurity.WPA, password: password);

    if (_isConnected) {
      print("Connected");
    } else {
      print("Failed to connect");
    }
  }

  static connectWifiByName(String wifiName, {String password}) async {
    _isConnected = await WiFiForIoTPlugin.connect(wifiName,
        security: NetworkSecurity.WPA, password: password);

    if (_isConnected) {
      print("Connected");
    } else {
      print("Failed to connect");
    }
  }

  static disconnectWifi() {
    WiFiForIoTPlugin.disconnect();
  }
}
