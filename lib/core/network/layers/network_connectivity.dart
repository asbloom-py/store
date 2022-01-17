import 'package:connectivity/connectivity.dart';

// ignore: avoid_classes_with_only_static_members
class NetworkConnectivity {
  static Future<bool> get status async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
