import 'package:effectivemobiletask/src/core/utils/constants.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_bloc.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_event.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
      const CharacterEvent.started(name: '', page: 1),
    );

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        context.read<CharacterBloc>().add(const CharacterEvent.loadMore());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rick & Morty Characters')),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Ready to fetch!')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (characters, page) {
              return GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemCount: characters.results.length,
                itemBuilder: (context, index) {
                  final character = characters.results[index];
                  return Card(
                    child: Column(
                      children: [
                        Image.network(character.image),
                        Text(character.name),
                        Text(character.status),
                        Text(character.species),
                        Align(
                          alignment: AlignmentGeometry.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: StaticColors.starColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
    );
  }
}
