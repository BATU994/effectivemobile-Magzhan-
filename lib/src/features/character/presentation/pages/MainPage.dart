import 'package:effectivemobiletask/src/features/character/data/models/favorite_character_model.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_event.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  late Box<FavoriteCharacterModel> favoritesBox;

  @override
  void initState() {
    super.initState();
    favoritesBox = Hive.box<FavoriteCharacterModel>('favorites');

    context.read<CharacterBloc>().add(const CharacterEvent.started());

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 100) {
        context.read<CharacterBloc>().add(const CharacterEvent.loadMore());
      }
    });

    _searchController.addListener(() {
      context.read<CharacterBloc>().add(
        CharacterEvent.search(_searchController.text),
      );
    });
  }

  bool isFavorite(int id) {
    return favoritesBox.values.any((fav) => fav.id == id);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Characters")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search characters...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<CharacterBloc, CharacterState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('Press start')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (msg) => Center(child: Text('Error: $msg')),
                  loaded:
                      (
                        allCharacters,
                        visibleCharacters,
                        page,
                        isLoadingMore,
                        hasReachedEnd,
                      ) {
                        if (visibleCharacters.isEmpty) {
                          return const Center(
                            child: Text('No characters found'),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<CharacterBloc>().add(
                              const CharacterEvent.refresh(),
                            );
                          },
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount:
                                visibleCharacters.length +
                                (isLoadingMore ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index >= visibleCharacters.length) {
                                return const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              }

                              final one = visibleCharacters[index];
                              final isFavorite = favoritesBox.values.any(
                                (c) => c.id == one.id,
                              );

                              return ListTile(
                                leading: Image.network(one.image),
                                title: Text(one.name),
                                subtitle: Text(
                                  '${one.species} — ${one.status} - ${one.gender}',
                                ),
                                trailing: IconButton(
                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                  ),
                                  onPressed: () {
                                    if (isFavorite) {
                                      final keyToDelete = favoritesBox.keys
                                          .firstWhere(
                                            (key) =>
                                                favoritesBox.get(key)!.id ==
                                                one.id,
                                          );
                                      favoritesBox.delete(keyToDelete);
                                    } else {
                                      favoritesBox.add(
                                        FavoriteCharacterModel(
                                          id: one.id,
                                          name: one.name,
                                          species: one.species,
                                          status: one.status,
                                          image: one.image,
                                        ),
                                      );
                                    }
                                    setState(() {});
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
