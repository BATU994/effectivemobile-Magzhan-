import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late Box<FavoriteCharacterModel> _favoritesBox;
  String _sortBy = 'name';

  @override
  void initState() {
    super.initState();
    _favoritesBox = Hive.box<FavoriteCharacterModel>('favorites');
  }

  void _removeFavorite(int index) {
    _favoritesBox.deleteAt(index);
  }

  List<FavoriteCharacterModel> _getSortedFavorites() {
    final list = _favoritesBox.values.toList();
    if (_sortBy == 'name') {
      list.sort((a, b) => a.name.compareTo(b.name));
    } else if (_sortBy == 'status') {
      list.sort((a, b) => a.status.compareTo(b.status));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: DropdownButton<String>(
            value: _sortBy,
            onChanged: (value) {
              if (value != null) {
                setState(() => _sortBy = value);
              }
            },
            items: const [
              DropdownMenuItem(value: 'name', child: Text('Sort by Name')),
              DropdownMenuItem(value: 'status', child: Text('Sort by Status')),
            ],
          ),
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: _favoritesBox.listenable(),
            builder: (context, Box<FavoriteCharacterModel> box, _) {
              final favorites = _getSortedFavorites();
              if (favorites.isEmpty) {
                return const Center(child: Text('No favorites yet'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  final c = favorites[index];
                  return Card(
                    child: ListTile(
                      leading: Image.network(c.image),
                      title: Text(c.name),
                      subtitle: Text('${c.species} — ${c.status}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removeFavorite(index),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
