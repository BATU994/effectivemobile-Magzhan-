import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_characters.dart';
import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetCharactersUseCase useCase;

  CharacterBloc(this.useCase) : super(const CharacterState.initial()) {
    on<CharacterEventStarted>(_onStarted);
    on<CharacterEventSearch>(_onSearch);
    on<CharacterEventRefresh>(_onRefresh);
    on<CharacterEventLoadMore>(_onLoadMore);
  }

  // initially loading

  Future<void> _onStarted(
    CharacterEventStarted event,
    Emitter<CharacterState> emit,
  ) async {
    emit(const CharacterState.loading());
    try {
      final data = await useCase(page: 1, name: '');
      emit(
        CharacterState.loaded(
          allCharacters: data.results,
          visibleCharacters: data.results,
          page: 1,
          isLoadingMore: false,
          hasReachedEnd: false,
        ),
      );
    } catch (e) {
      emit(CharacterState.error(e.toString()));
    }
  }

  // search by each symbol
  Future<void> _onSearch(
    CharacterEventSearch event,
    Emitter<CharacterState> emit,
  ) async {
    final current = state;
    if (current is CharacterStateLoaded) {
      final query = event.query.trim().toLowerCase();
      final filtered = query.isEmpty
          ? current.allCharacters
          : current.allCharacters
                .where((c) => c.name.toLowerCase().contains(query))
                .toList();

      emit(current.copyWith(visibleCharacters: filtered));
    }
  }

  // update
  Future<void> _onRefresh(
    CharacterEventRefresh event,
    Emitter<CharacterState> emit,
  ) async {
    final current = state;
    if (current is CharacterStateLoaded) {
      try {
        final data = await useCase(page: 1, name: '');
        emit(
          current.copyWith(
            allCharacters: data.results,
            visibleCharacters: data.results,
            page: 1,
            isLoadingMore: false,
            hasReachedEnd: false,
          ),
        );
      } catch (e) {
        emit(CharacterState.error(e.toString()));
      }
    }
  }

  // morepages
  Future<void> _onLoadMore(
    CharacterEventLoadMore event,
    Emitter<CharacterState> emit,
  ) async {
    final current = state;
    if (current is CharacterStateLoaded &&
        !current.isLoadingMore &&
        !current.hasReachedEnd) {
      emit(current.copyWith(isLoadingMore: true));
      try {
        final nextPage = current.page + 1;
        final data = await useCase(page: nextPage, name: '');
        if (data.results.isEmpty) {
          emit(current.copyWith(isLoadingMore: false, hasReachedEnd: true));
        } else {
          final updatedAll = List.of(current.allCharacters)
            ..addAll(data.results);
          emit(
            current.copyWith(
              allCharacters: updatedAll,
              visibleCharacters: updatedAll,
              page: nextPage,
              isLoadingMore: false,
            ),
          );
        }
      } catch (e) {
        emit(current.copyWith(isLoadingMore: false));
        emit(CharacterState.error(e.toString()));
      }
    }
  }
}
