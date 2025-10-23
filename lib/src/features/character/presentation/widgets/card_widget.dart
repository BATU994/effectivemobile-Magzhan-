import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CardWidget extends StatelessWidget {
  final dynamic character;
  const CardWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final favoritesBox = Hive.box<FavoriteCharacterModel>('favorites');
    final isFavorite = favoritesBox.values.any((c) => c.id == character.id);

    return Card(
      child: Column(
        children: [
          Image.network(character.image, height: 120, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  character.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('${character.species} — ${character.status}'),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              if (isFavorite) {
                final keyToDelete = favoritesBox.keys.firstWhere(
                  (key) => favoritesBox.get(key)!.id == character.id,
                );
                favoritesBox.delete(keyToDelete);
              } else {
                favoritesBox.add(
                  FavoriteCharacterModel(
                    id: character.id,
                    name: character.name,
                    species: character.species,
                    status: character.status,
                    image: character.image,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
