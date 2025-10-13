import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_event.freezed.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.started({
    required String name,
    required int page,
  }) = CharacterEventStarted;

  const factory CharacterEvent.loadMore() = CharacterEventLoadMore;

  const factory CharacterEvent.refresh({String? name}) = CharacterEventRefresh;
}
