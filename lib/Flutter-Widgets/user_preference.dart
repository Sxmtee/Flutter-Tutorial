import 'package:shared_preferences/shared_preferences.dart';

class SimplePreferences {
  static late SharedPreferences _preferences;
  static int _score = 0;
  static String _name = "";

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
    _score = _preferences.getInt('keyscore') ?? 0;
    _name = _preferences.getString('keyname') ?? '';
  }

  static Future setScore(int num) async {
    await _preferences.setInt("keyscore", num);
  }

  static Future setName(String name) async {
    await _preferences.setString("keyname", name);
  }

  static getScore() => _score;

  static getName() => _name;
}
