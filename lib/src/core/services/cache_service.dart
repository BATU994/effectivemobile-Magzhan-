import 'dart:convert';

import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:hive/hive.dart';

class CharacterCacheService {
  final Box<String> _box;

  CharacterCacheService() : _box = Hive.box<String>('character_cache');

  String _key(int page, String name) =>
      'page_${page}_name_${name.toLowerCase()}';

  void savePage(int page, String name, CharacterModel model) {
    final jsonStr = jsonEncode(model.toJson());
    _box.put(_key(page, name), jsonStr);
  }

  CharacterModel? getPage(int page, String name) {
    final jsonStr = _box.get(_key(page, name));
    if (jsonStr == null) return null;
    try {
      final map = jsonDecode(jsonStr) as Map<String, dynamic>;
      return CharacterModel.fromJson(map);
    } catch (_) {
      return null;
    }
  }
}
