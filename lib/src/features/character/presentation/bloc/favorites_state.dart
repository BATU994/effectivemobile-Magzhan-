import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';

class FavoritesState {
  final List<FavoriteCharacterModel> favorites;
  final String sortBy;

  const FavoritesState({required this.favorites, required this.sortBy});

  FavoritesState copyWith({
    List<FavoriteCharacterModel>? favorites,
    String? sortBy,
  }) {
    return FavoritesState(
      favorites: favorites ?? this.favorites,
      sortBy: sortBy ?? this.sortBy,
    );
  }
}
