import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/favorites_repo.dart';

class ToggleFavoriteUseCase {
  final FavoritesRepo repo;
  ToggleFavoriteUseCase(this.repo);

  void call(Result result) {
    final isFav = repo.isFavorite(result.id);
    if (isFav) {
      repo.removeById(result.id);
    } else {
      repo.addFavorite(
        FavoriteCharacterModel(
          id: result.id,
          name: result.name,
          species: result.species,
          status: result.status,
          image: result.image,
        ),
      );
    }
  }
}
