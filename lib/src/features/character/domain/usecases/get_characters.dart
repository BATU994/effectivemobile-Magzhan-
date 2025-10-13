import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

class GetCharactersUseCase {
  final CharacterRepo repo;

  GetCharactersUseCase(this.repo);

  Future<CharacterModel> call({required int page, required String name}) {
    return repo.getAllCharacter(page, name);
  }
}
