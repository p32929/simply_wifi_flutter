import 'package:simply_wifi/simply_wifi.dart';
import 'package:wifi_iot/wifi_iot.dart';

Future<void> main() async {
  // Must call before doing anything else
  // It takes location permission on the run time
  // also does some unknown things :/
  SimplyWifi.init();

  // To turn on wifi dynamically
  SimplyWifi.turnOnWifi();

  // To turn off wifi dynamically
  SimplyWifi.turnOffWifi();

  // To get the list of Wifis
  List<WifiNetwork> _wifiNetworks = await SimplyWifi.getListOfWifis();

  // To connect a wifi from _wifiNetworks list by index
  int indexNumber = 0;
  String passwordOfTheWifi = "I-dont-know";
  SimplyWifi.connectWifiByIndex(indexNumber, password: passwordOfTheWifi);

  // To connect a wifi by its name ( SSID )
  String wifiName = "WifiName";
  SimplyWifi.connectWifiByName(wifiName, password: passwordOfTheWifi);

  // To disconnect the wifi
  SimplyWifi.disconnectWifi();

  // And that's it my friend :)
}
