import 'package:effectivemobiletask/src/core/di/di.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';
import 'package:effectivemobiletask/src/features/character/presentation/pages/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  await Hive.initFlutter();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CharacterBloc>(),
      child: MaterialApp(
        title: 'Flutter Dependency Injection',
        home: CharacterPage(),
      ),
    );
  }
}
