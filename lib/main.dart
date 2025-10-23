import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:effectivemobiletask/src/core/di/di.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteCharacterModelAdapter());
  await Hive.openBox<FavoriteCharacterModel>('favorites');

  setupDI();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CharacterBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Effective Mobile Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: const Homepage(),
      ),
    );
  }
}
