import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/favorites_repo.dart';

class GetFavoritesUseCase {
  final FavoritesRepo repo;
  GetFavoritesUseCase(this.repo);

  List<FavoriteCharacterModel> call({required String sortBy}) {
    return repo.getAllSorted(sortBy);
  }
}
