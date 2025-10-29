import 'package:effectivemobiletask/src/features/character/domain/repositories/favorites_repo.dart';

class RemoveFavoriteUseCase {
  final FavoritesRepo repo;
  RemoveFavoriteUseCase(this.repo);

  void call(int id) {
    repo.removeById(id);
  }
}
