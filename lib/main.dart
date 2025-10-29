import 'package:effectivemobiletask/src/core/services/theme_service.dart';
import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/presentation/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:effectivemobiletask/src/core/di/di.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await ThemeService.init();
  Hive.registerAdapter(FavoriteCharacterModelAdapter());
  await Hive.openBox<FavoriteCharacterModel>('favorites');
  await Hive.openBox<bool>('settings');
  await Hive.openBox<String>('character_cache');

  setupDI();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool isDark;

  @override
  void initState() {
    super.initState();
    isDark = ThemeService.getTheme();
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
    ThemeService.saveTheme(isDark);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<CharacterBloc>()),
        BlocProvider(create: (_) => getIt<FavoritesBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Effective Mobile Task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(useMaterial3: true),
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        home: Homepage(toggleTheme: toggleTheme),
      ),
    );
  }
}
