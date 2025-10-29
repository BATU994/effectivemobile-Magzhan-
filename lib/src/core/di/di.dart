import 'package:dio/dio.dart';
import 'package:effectivemobiletask/src/features/character/data/repositories/character_repository_impl.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

import 'package:effectivemobiletask/src/core/network/dio_client.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/get_characters.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_cubit.dart';
import 'package:effectivemobiletask/src/core/services/cache_service.dart';
import 'package:effectivemobiletask/src/features/character/data/datasources/favorites_local_data_source.dart';
import 'package:effectivemobiletask/src/features/character/data/repositories/favorites_repository_impl.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/favorites_repo.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/get_favorites.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/toggle_favorite.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/remove_favorite.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  //  DioClient
  getIt.registerLazySingleton<DioClient>(
    () => DioClient(
      Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com/api/')),
    ),
  );

  // Repository
  getIt.registerLazySingleton<CharacterCacheService>(
    () => CharacterCacheService(),
  );
  getIt.registerLazySingleton<CharacterRepo>(
    () => CharacterRepositoryImpl(
      getIt<DioClient>(),
      getIt<CharacterCacheService>(),
    ),
  );
  // Favorites layer
  getIt.registerLazySingleton<FavoritesLocalDataSource>(
    () => FavoritesLocalDataSource(),
  );
  getIt.registerLazySingleton<FavoritesRepo>(
    () => FavoritesRepositoryImpl(getIt<FavoritesLocalDataSource>()),
  );
  getIt.registerLazySingleton<GetFavoritesUseCase>(
    () => GetFavoritesUseCase(getIt<FavoritesRepo>()),
  );
  getIt.registerLazySingleton<ToggleFavoriteUseCase>(
    () => ToggleFavoriteUseCase(getIt<FavoritesRepo>()),
  );
  getIt.registerLazySingleton<RemoveFavoriteUseCase>(
    () => RemoveFavoriteUseCase(getIt<FavoritesRepo>()),
  );

  // Use Case
  getIt.registerLazySingleton<GetCharactersUseCase>(
    () => GetCharactersUseCase(getIt<CharacterRepo>()),
  );

  //  Bloc
  getIt.registerFactory<CharacterBloc>(
    () => CharacterBloc(getIt<GetCharactersUseCase>()),
  );
  getIt.registerFactory<FavoritesBloc>(
    () => FavoritesBloc(
      getIt<GetFavoritesUseCase>(),
      getIt<ToggleFavoriteUseCase>(),
      getIt<RemoveFavoriteUseCase>(),
    ),
  );
}
