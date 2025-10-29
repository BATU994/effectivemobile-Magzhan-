import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:hive/hive.dart';

class FavoritesLocalDataSource {
  final Box<FavoriteCharacterModel> _box;

  FavoritesLocalDataSource()
    : _box = Hive.box<FavoriteCharacterModel>('favorites');

  List<FavoriteCharacterModel> getAll() {
    return _box.values.toList(growable: false);
  }

  void add(FavoriteCharacterModel model) {
    _box.add(model);
  }

  void removeById(int id) {
    final keyToDelete = _box.keys.firstWhere(
      (key) => _box.get(key)!.id == id,
      orElse: () => -1,
    );
    if (keyToDelete != -1) {
      _box.delete(keyToDelete);
    }
  }

  bool existsById(int id) {
    return _box.values.any((c) => c.id == id);
  }
}
