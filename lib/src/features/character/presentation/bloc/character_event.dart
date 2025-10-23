import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_event.freezed.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.started() = CharacterEventStarted;
  const factory CharacterEvent.search(String query) = CharacterEventSearch;
  const factory CharacterEvent.refresh() = CharacterEventRefresh;
  const factory CharacterEvent.loadMore() = CharacterEventLoadMore;
}
