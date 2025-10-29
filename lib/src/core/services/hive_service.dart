import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesRepository {
  final Box<FavoriteCharacterModel> _favoritesBox;

  FavoritesRepository()
    : _favoritesBox = Hive.box<FavoriteCharacterModel>('favorites');

  List<FavoriteCharacterModel> getAll({String sortBy = 'name'}) {
    final list = _favoritesBox.values.toList();
    if (sortBy == 'name') {
      list.sort((a, b) => a.name.compareTo(b.name));
    } else if (sortBy == 'status') {
      list.sort((a, b) => a.status.compareTo(b.status));
    }
    return list;
  }

  void add(FavoriteCharacterModel character) {
    _favoritesBox.add(character);
  }

  void removeAt(int index) {
    _favoritesBox.deleteAt(index);
  }

  ValueListenable<Box<FavoriteCharacterModel>> get listenable =>
      _favoritesBox.listenable();
}
