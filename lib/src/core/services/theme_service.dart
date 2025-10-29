import 'package:hive_flutter/hive_flutter.dart';

class ThemeService {
  static const String _boxName = 'settings';
  static const String _key = 'isDarkMode';

  static Future<void> init() async {
    await Hive.openBox<bool>(_boxName);
  }

  static bool getTheme() {
    final box = Hive.box<bool>(_boxName);
    return box.get(_key, defaultValue: false)!;
  }

  static void saveTheme(bool isDark) {
    final box = Hive.box<bool>(_boxName);
    box.put(_key, isDark);
  }
}
