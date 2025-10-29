import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';

abstract interface class FavoritesRepo {
  List<FavoriteCharacterModel> getAllSorted(String sortBy);
  void addFavorite(FavoriteCharacterModel model);
  void removeById(int id);
  bool isFavorite(int id);
}
