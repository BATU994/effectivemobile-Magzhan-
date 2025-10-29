import 'package:effectivemobiletask/src/features/character/data/datasources/favorites_local_data_source.dart';
import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/favorites_repo.dart';

class FavoritesRepositoryImpl implements FavoritesRepo {
  final FavoritesLocalDataSource localDataSource;

  FavoritesRepositoryImpl(this.localDataSource);

  @override
  void addFavorite(FavoriteCharacterModel model) {
    localDataSource.add(model);
  }

  @override
  List<FavoriteCharacterModel> getAllSorted(String sortBy) {
    final list = localDataSource.getAll();
    if (sortBy == 'status') {
      list.sort((a, b) => a.status.compareTo(b.status));
    } else {
      list.sort((a, b) => a.name.compareTo(b.name));
    }
    return list;
  }

  @override
  bool isFavorite(int id) {
    return localDataSource.existsById(id);
  }

  @override
  void removeById(int id) {
    localDataSource.removeById(id);
  }
}
