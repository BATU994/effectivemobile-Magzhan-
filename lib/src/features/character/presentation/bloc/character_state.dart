import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/character_model.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = CharacterStateInitial;
  const factory CharacterState.loading() = CharacterStateLoading;
  const factory CharacterState.loaded({
    required List<Result> allCharacters,
    required List<Result> visibleCharacters,
    required int page,
    required bool isLoadingMore,
    required bool hasReachedEnd,
  }) = CharacterStateLoaded;
  const factory CharacterState.error(String message) = CharacterStateError;
}
