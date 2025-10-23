import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';

abstract interface class CharacterRepo {
  Future<CharacterModel> getAllCharacter(int page, String name);
}
