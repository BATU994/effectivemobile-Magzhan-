import 'package:effectivemobiletask/src/core/network/dio_client.dart';
import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

class CharacterRepositoryImpl implements CharacterRepo {
  final DioClient _dioClient;
  CharacterRepositoryImpl(this._dioClient);
  @override
  Future<CharacterModel> getAllCharacter(int page, String name) async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>('character', {
        'page': page,
        if (name.isNotEmpty) 'name': name,
      });
      return CharacterModel.fromJson(response.data!);
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
