import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_cubit.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_state.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorties_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: DropdownButton<String>(
                value: state.sortBy,
                onChanged: (value) {
                  if (value != null) {
                    context.read<FavoritesBloc>().add(
                      FavoritesSortChanged(value),
                    );
                  }
                },
                items: const [
                  DropdownMenuItem(value: 'name', child: Text('Sort by Name')),
                  DropdownMenuItem(
                    value: 'status',
                    child: Text('Sort by Status'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  final favorites = state.favorites;
                  if (favorites.isEmpty) {
                    return const Center(child: Text('No favorites yet'));
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: favorites.length,
                    itemBuilder: (context, index) {
                      final FavoriteCharacterModel c = favorites[index];
                      return Card(
                        child: ListTile(
                          leading: SizedBox(
                            width: 56,
                            height: 56,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                c.image,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const ColoredBox(
                                    color: Colors.black12,
                                    child: Icon(Icons.broken_image),
                                  );
                                },
                              ),
                            ),
                          ),
                          title: Text(c.name),
                          subtitle: Text('${c.species} — ${c.status}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => context.read<FavoritesBloc>().add(
                              FavoriteRemoved(c.id),
                            ),
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
      },
    );
  }
}
