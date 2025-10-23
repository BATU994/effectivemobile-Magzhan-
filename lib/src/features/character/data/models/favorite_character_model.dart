import 'package:hive/hive.dart';
part 'favorite_character_model.g.dart';

@HiveType(typeId: 0)
class FavoriteCharacterModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  @HiveField(2)
  final String status;

  @HiveField(3)
  final String species;

  @HiveField(4)
  final String image;

  FavoriteCharacterModel({
    required this.id,
    required this.image,
    required this.name,
    required this.species,
    required this.status,
  });
}
