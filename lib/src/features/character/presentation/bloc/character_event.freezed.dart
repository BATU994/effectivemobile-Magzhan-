// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventStarted value) started,
    required TResult Function(CharacterEventSearch value) search,
    required TResult Function(CharacterEventRefresh value) refresh,
    required TResult Function(CharacterEventLoadMore value) loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventStarted value)? started,
    TResult? Function(CharacterEventSearch value)? search,
    TResult? Function(CharacterEventRefresh value)? refresh,
    TResult? Function(CharacterEventLoadMore value)? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventStarted value)? started,
    TResult Function(CharacterEventSearch value)? search,
    TResult Function(CharacterEventRefresh value)? refresh,
    TResult Function(CharacterEventLoadMore value)? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
    CharacterEvent value,
    $Res Function(CharacterEvent) then,
  ) = _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterEventStartedImplCopyWith<$Res> {
  factory _$$CharacterEventStartedImplCopyWith(
    _$CharacterEventStartedImpl value,
    $Res Function(_$CharacterEventStartedImpl) then,
  ) = __$$CharacterEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterEventStartedImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventStartedImpl>
    implements _$$CharacterEventStartedImplCopyWith<$Res> {
  __$$CharacterEventStartedImplCopyWithImpl(
    _$CharacterEventStartedImpl _value,
    $Res Function(_$CharacterEventStartedImpl) _then,
  ) : super(_value, _then);
}

/// @nodoc

class _$CharacterEventStartedImpl implements CharacterEventStarted {
  const _$CharacterEventStartedImpl();

  @override
  String toString() {
    return 'CharacterEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventStarted value) started,
    required TResult Function(CharacterEventSearch value) search,
    required TResult Function(CharacterEventRefresh value) refresh,
    required TResult Function(CharacterEventLoadMore value) loadMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventStarted value)? started,
    TResult? Function(CharacterEventSearch value)? search,
    TResult? Function(CharacterEventRefresh value)? refresh,
    TResult? Function(CharacterEventLoadMore value)? loadMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventStarted value)? started,
    TResult Function(CharacterEventSearch value)? search,
    TResult Function(CharacterEventRefresh value)? refresh,
    TResult Function(CharacterEventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class CharacterEventStarted implements CharacterEvent {
  const factory CharacterEventStarted() = _$CharacterEventStartedImpl;
}

/// @nodoc
abstract class _$$CharacterEventSearchImplCopyWith<$Res> {
  factory _$$CharacterEventSearchImplCopyWith(
    _$CharacterEventSearchImpl value,
    $Res Function(_$CharacterEventSearchImpl) then,
  ) = __$$CharacterEventSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$CharacterEventSearchImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventSearchImpl>
    implements _$$CharacterEventSearchImplCopyWith<$Res> {
  __$$CharacterEventSearchImplCopyWithImpl(
    _$CharacterEventSearchImpl _value,
    $Res Function(_$CharacterEventSearchImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null}) {
    return _then(
      _$CharacterEventSearchImpl(
        null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CharacterEventSearchImpl implements CharacterEventSearch {
  const _$CharacterEventSearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CharacterEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterEventSearchImplCopyWith<_$CharacterEventSearchImpl>
  get copyWith =>
      __$$CharacterEventSearchImplCopyWithImpl<_$CharacterEventSearchImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventStarted value) started,
    required TResult Function(CharacterEventSearch value) search,
    required TResult Function(CharacterEventRefresh value) refresh,
    required TResult Function(CharacterEventLoadMore value) loadMore,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventStarted value)? started,
    TResult? Function(CharacterEventSearch value)? search,
    TResult? Function(CharacterEventRefresh value)? refresh,
    TResult? Function(CharacterEventLoadMore value)? loadMore,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventStarted value)? started,
    TResult Function(CharacterEventSearch value)? search,
    TResult Function(CharacterEventRefresh value)? refresh,
    TResult Function(CharacterEventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class CharacterEventSearch implements CharacterEvent {
  const factory CharacterEventSearch(final String query) =
      _$CharacterEventSearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$CharacterEventSearchImplCopyWith<_$CharacterEventSearchImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterEventRefreshImplCopyWith<$Res> {
  factory _$$CharacterEventRefreshImplCopyWith(
    _$CharacterEventRefreshImpl value,
    $Res Function(_$CharacterEventRefreshImpl) then,
  ) = __$$CharacterEventRefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterEventRefreshImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventRefreshImpl>
    implements _$$CharacterEventRefreshImplCopyWith<$Res> {
  __$$CharacterEventRefreshImplCopyWithImpl(
    _$CharacterEventRefreshImpl _value,
    $Res Function(_$CharacterEventRefreshImpl) _then,
  ) : super(_value, _then);
}

/// @nodoc

class _$CharacterEventRefreshImpl implements CharacterEventRefresh {
  const _$CharacterEventRefreshImpl();

  @override
  String toString() {
    return 'CharacterEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventRefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventStarted value) started,
    required TResult Function(CharacterEventSearch value) search,
    required TResult Function(CharacterEventRefresh value) refresh,
    required TResult Function(CharacterEventLoadMore value) loadMore,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventStarted value)? started,
    TResult? Function(CharacterEventSearch value)? search,
    TResult? Function(CharacterEventRefresh value)? refresh,
    TResult? Function(CharacterEventLoadMore value)? loadMore,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventStarted value)? started,
    TResult Function(CharacterEventSearch value)? search,
    TResult Function(CharacterEventRefresh value)? refresh,
    TResult Function(CharacterEventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class CharacterEventRefresh implements CharacterEvent {
  const factory CharacterEventRefresh() = _$CharacterEventRefreshImpl;
}

/// @nodoc
abstract class _$$CharacterEventLoadMoreImplCopyWith<$Res> {
  factory _$$CharacterEventLoadMoreImplCopyWith(
    _$CharacterEventLoadMoreImpl value,
    $Res Function(_$CharacterEventLoadMoreImpl) then,
  ) = __$$CharacterEventLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterEventLoadMoreImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterEventLoadMoreImpl>
    implements _$$CharacterEventLoadMoreImplCopyWith<$Res> {
  __$$CharacterEventLoadMoreImplCopyWithImpl(
    _$CharacterEventLoadMoreImpl _value,
    $Res Function(_$CharacterEventLoadMoreImpl) _then,
  ) : super(_value, _then);
}

/// @nodoc

class _$CharacterEventLoadMoreImpl implements CharacterEventLoadMore {
  const _$CharacterEventLoadMoreImpl();

  @override
  String toString() {
    return 'CharacterEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterEventLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String query) search,
    required TResult Function() refresh,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String query)? search,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String query)? search,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventStarted value) started,
    required TResult Function(CharacterEventSearch value) search,
    required TResult Function(CharacterEventRefresh value) refresh,
    required TResult Function(CharacterEventLoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterEventStarted value)? started,
    TResult? Function(CharacterEventSearch value)? search,
    TResult? Function(CharacterEventRefresh value)? refresh,
    TResult? Function(CharacterEventLoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventStarted value)? started,
    TResult Function(CharacterEventSearch value)? search,
    TResult Function(CharacterEventRefresh value)? refresh,
    TResult Function(CharacterEventLoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class CharacterEventLoadMore implements CharacterEvent {
  const factory CharacterEventLoadMore() = _$CharacterEventLoadMoreImpl;
}
