import 'package:effectivemobiletask/src/features/character/data/models/character_model.dart';

abstract class FavoritesEvent {}

class FavoritesStarted extends FavoritesEvent {}

class FavoritesSortChanged extends FavoritesEvent {
  final String sortBy;
  FavoritesSortChanged(this.sortBy);
}

class FavoritesToggled extends FavoritesEvent {
  final Result result;
  FavoritesToggled(this.result);
}

class FavoriteRemoved extends FavoritesEvent {
  final int id;
  FavoriteRemoved(this.id);
}
