import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_event.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/character_state.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_cubit.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorties_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
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
                              final favState = context
                                  .watch<FavoritesBloc>()
                                  .state;
                              final isFavorite = favState.favorites.any(
                                (c) => c.id == one.id,
                              );

                              return ListTile(
                                leading: SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      one.image,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return const ColoredBox(
                                              color: Colors.black12,
                                              child: Icon(Icons.broken_image),
                                            );
                                          },
                                    ),
                                  ),
                                ),
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
                                    context.read<FavoritesBloc>().add(
                                      FavoritesToggled(one),
                                    );
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
