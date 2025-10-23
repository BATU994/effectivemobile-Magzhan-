import 'package:dio/dio.dart';
import 'package:effectivemobiletask/src/features/character/data/repositories/character_repository_impl.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

import 'package:effectivemobiletask/src/core/network/dio_client.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/get_characters.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';
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
  getIt.registerLazySingleton<CharacterRepo>(
    () => CharacterRepositoryImpl(getIt<DioClient>()),
  );

  // Use Case
  getIt.registerLazySingleton<GetCharactersUseCase>(
    () => GetCharactersUseCase(getIt<CharacterRepo>()),
  );

  //  Bloc
  getIt.registerFactory<CharacterBloc>(
    () => CharacterBloc(getIt<GetCharactersUseCase>()),
  );
}
