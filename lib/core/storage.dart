import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences pre;
  static Future<void> init() async {
    pre = await SharedPreferences.getInstance();
  }
}
