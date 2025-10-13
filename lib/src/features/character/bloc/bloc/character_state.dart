import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = CharacterStateInitial;
  const factory CharacterState.loading() = CharacterStateLoading;
  const factory CharacterState.loaded({
    required CharacterModel characters,
    required int page,
  }) = CharacterStateLoaded;
  const factory CharacterState.error(String message) = CharacterStateError;
}
