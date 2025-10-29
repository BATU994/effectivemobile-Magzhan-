import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/get_favorites.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/remove_favorite.dart';
import 'package:effectivemobiletask/src/features/character/domain/usecases/favorites/toggle_favorite.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorites_state.dart';
import 'package:effectivemobiletask/src/features/character/presentation/bloc/favorties_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final GetFavoritesUseCase _getFavorites;
  final ToggleFavoriteUseCase _toggleFavorite;
  final RemoveFavoriteUseCase _removeFavorite;

  FavoritesBloc(this._getFavorites, this._toggleFavorite, this._removeFavorite)
    : super(const FavoritesState(favorites: [], sortBy: 'name')) {
    on<FavoritesStarted>(_onStarted);
    on<FavoritesSortChanged>(_onSortChanged);
    on<FavoritesToggled>(_onToggled);
    on<FavoriteRemoved>(_onRemoved);

    add(FavoritesStarted());
  }

  void _emitReload(Emitter<FavoritesState> emit) {
    final items = _getFavorites(sortBy: state.sortBy);
    emit(state.copyWith(favorites: items));
  }

  void _onStarted(FavoritesStarted event, Emitter<FavoritesState> emit) {
    _emitReload(emit);
  }

  void _onSortChanged(
    FavoritesSortChanged event,
    Emitter<FavoritesState> emit,
  ) {
    if (event.sortBy == state.sortBy) return;
    emit(state.copyWith(sortBy: event.sortBy));
    _emitReload(emit);
  }

  void _onToggled(FavoritesToggled event, Emitter<FavoritesState> emit) {
    _toggleFavorite(event.result);
    _emitReload(emit);
  }

  void _onRemoved(FavoriteRemoved event, Emitter<FavoritesState> emit) {
    _removeFavorite(event.id);
    _emitReload(emit);
  }
}
