import 'package:dio/dio.dart';
import 'package:effectivemobiletask/src/core/network/dio_client.dart';
import 'package:effectivemobiletask/src/core/services/cache_service.dart';
import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

class CharacterRepositoryImpl implements CharacterRepo {
  final DioClient _dioClient;
  final CharacterCacheService _cache;
  CharacterRepositoryImpl(this._dioClient, this._cache);
  @override
  Future<CharacterModel> getAllCharacter(int page, String name) async {
    try {
      final response = await _dioClient.get<Map<String, dynamic>>('character', {
        'page': page,
        if (name.isNotEmpty) 'name': name,
      });
      final model = CharacterModel.fromJson(response.data!);
      _cache.savePage(page, name, model);
      return model;
    } on DioException catch (_) {
      final cached = _cache.getPage(page, name);
      if (cached != null) return cached;
      throw Exception('No internet connection and no cached data available.');
    } catch (_) {
      final cached = _cache.getPage(page, name);
      if (cached != null) return cached;
      throw Exception('Failed to load data. Please try again later.');
    }
  }
}
