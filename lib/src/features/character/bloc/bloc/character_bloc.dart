import 'package:bloc/bloc.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_event.dart';
import 'package:effectivemobiletask/src/features/character/bloc/bloc/character_state.dart';
import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:effectivemobiletask/src/features/character/domain/repositories/character_repo.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepo characterRepo;

  CharacterBloc({required this.characterRepo})
    : super(const CharacterState.initial()) {
    on<CharacterEventStarted>(_onStarted);
    on<CharacterEventLoadMore>(_onLoadMore);
    on<CharacterEventRefresh>(_onRefresh);
  }

  Future<void> _onStarted(
    CharacterEventStarted event,
    Emitter<CharacterState> emit,
  ) async {
    await _fetchCharacters(
      emit,
      page: event.page,
      name: event.name,
      reset: true,
    );
  }

  Future<void> _onLoadMore(
    CharacterEventLoadMore event,
    Emitter<CharacterState> emit,
  ) async {
    final currentState = state;
    if (currentState is! CharacterStateLoaded) return;

    await _fetchCharacters(
      emit,
      page: currentState.page + 1,
      name: '',
      previous: currentState.characters,
    );
  }

  Future<void> _onRefresh(
    CharacterEventRefresh event,
    Emitter<CharacterState> emit,
  ) async {
    await _fetchCharacters(emit, page: 1, name: event.name ?? '', reset: true);
  }

  Future<void> _fetchCharacters(
    Emitter<CharacterState> emit, {
    required int page,
    required String name,
    CharacterModel? previous,
    bool reset = false,
  }) async {
    if (reset) emit(const CharacterState.loading());

    try {
      final newData = await characterRepo.getAllCharacter(page, name);
      final combinedResults = previous == null
          ? newData.results
          : [...previous.results, ...newData.results];

      emit(
        CharacterState.loaded(
          characters: CharacterModel(
            info: newData.info,
            results: combinedResults,
          ),
          page: page,
        ),
      );
    } catch (e) {
      emit(CharacterState.error(e.toString()));
    }
  }
}
