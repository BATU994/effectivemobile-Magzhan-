// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Result> allCharacters, List<Result> visibleCharacters,
            int page, bool isLoadingMore, bool hasReachedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateInitial value) initial,
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateInitial value)? initial,
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateInitial value)? initial,
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterStateInitialImplCopyWith<$Res> {
  factory _$$CharacterStateInitialImplCopyWith(
          _$CharacterStateInitialImpl value,
          $Res Function(_$CharacterStateInitialImpl) then) =
      __$$CharacterStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateInitialImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateInitialImpl>
    implements _$$CharacterStateInitialImplCopyWith<$Res> {
  __$$CharacterStateInitialImplCopyWithImpl(_$CharacterStateInitialImpl _value,
      $Res Function(_$CharacterStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateInitialImpl implements CharacterStateInitial {
  const _$CharacterStateInitialImpl();

  @override
  String toString() {
    return 'CharacterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Result> allCharacters, List<Result> visibleCharacters,
            int page, bool isLoadingMore, bool hasReachedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateInitial value) initial,
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateInitial value)? initial,
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateInitial value)? initial,
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharacterStateInitial implements CharacterState {
  const factory CharacterStateInitial() = _$CharacterStateInitialImpl;
}

/// @nodoc
abstract class _$$CharacterStateLoadingImplCopyWith<$Res> {
  factory _$$CharacterStateLoadingImplCopyWith(
          _$CharacterStateLoadingImpl value,
          $Res Function(_$CharacterStateLoadingImpl) then) =
      __$$CharacterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateLoadingImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoadingImpl>
    implements _$$CharacterStateLoadingImplCopyWith<$Res> {
  __$$CharacterStateLoadingImplCopyWithImpl(_$CharacterStateLoadingImpl _value,
      $Res Function(_$CharacterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateLoadingImpl implements CharacterStateLoading {
  const _$CharacterStateLoadingImpl();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Result> allCharacters, List<Result> visibleCharacters,
            int page, bool isLoadingMore, bool hasReachedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateInitial value) initial,
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateInitial value)? initial,
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateInitial value)? initial,
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoading implements CharacterState {
  const factory CharacterStateLoading() = _$CharacterStateLoadingImpl;
}

/// @nodoc
abstract class _$$CharacterStateLoadedImplCopyWith<$Res> {
  factory _$$CharacterStateLoadedImplCopyWith(_$CharacterStateLoadedImpl value,
          $Res Function(_$CharacterStateLoadedImpl) then) =
      __$$CharacterStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Result> allCharacters,
      List<Result> visibleCharacters,
      int page,
      bool isLoadingMore,
      bool hasReachedEnd});
}

/// @nodoc
class __$$CharacterStateLoadedImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoadedImpl>
    implements _$$CharacterStateLoadedImplCopyWith<$Res> {
  __$$CharacterStateLoadedImplCopyWithImpl(_$CharacterStateLoadedImpl _value,
      $Res Function(_$CharacterStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCharacters = null,
    Object? visibleCharacters = null,
    Object? page = null,
    Object? isLoadingMore = null,
    Object? hasReachedEnd = null,
  }) {
    return _then(_$CharacterStateLoadedImpl(
      allCharacters: null == allCharacters
          ? _value._allCharacters
          : allCharacters // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      visibleCharacters: null == visibleCharacters
          ? _value._visibleCharacters
          : visibleCharacters // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharacterStateLoadedImpl implements CharacterStateLoaded {
  const _$CharacterStateLoadedImpl(
      {required final List<Result> allCharacters,
      required final List<Result> visibleCharacters,
      required this.page,
      required this.isLoadingMore,
      required this.hasReachedEnd})
      : _allCharacters = allCharacters,
        _visibleCharacters = visibleCharacters;

  final List<Result> _allCharacters;
  @override
  List<Result> get allCharacters {
    if (_allCharacters is EqualUnmodifiableListView) return _allCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCharacters);
  }

  final List<Result> _visibleCharacters;
  @override
  List<Result> get visibleCharacters {
    if (_visibleCharacters is EqualUnmodifiableListView)
      return _visibleCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visibleCharacters);
  }

  @override
  final int page;
  @override
  final bool isLoadingMore;
  @override
  final bool hasReachedEnd;

  @override
  String toString() {
    return 'CharacterState.loaded(allCharacters: $allCharacters, visibleCharacters: $visibleCharacters, page: $page, isLoadingMore: $isLoadingMore, hasReachedEnd: $hasReachedEnd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allCharacters, _allCharacters) &&
            const DeepCollectionEquality()
                .equals(other._visibleCharacters, _visibleCharacters) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCharacters),
      const DeepCollectionEquality().hash(_visibleCharacters),
      page,
      isLoadingMore,
      hasReachedEnd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateLoadedImplCopyWith<_$CharacterStateLoadedImpl>
      get copyWith =>
          __$$CharacterStateLoadedImplCopyWithImpl<_$CharacterStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        allCharacters, visibleCharacters, page, isLoadingMore, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        allCharacters, visibleCharacters, page, isLoadingMore, hasReachedEnd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Result> allCharacters, List<Result> visibleCharacters,
            int page, bool isLoadingMore, bool hasReachedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          allCharacters, visibleCharacters, page, isLoadingMore, hasReachedEnd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateInitial value) initial,
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateInitial value)? initial,
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateInitial value)? initial,
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoaded implements CharacterState {
  const factory CharacterStateLoaded(
      {required final List<Result> allCharacters,
      required final List<Result> visibleCharacters,
      required final int page,
      required final bool isLoadingMore,
      required final bool hasReachedEnd}) = _$CharacterStateLoadedImpl;

  List<Result> get allCharacters;
  List<Result> get visibleCharacters;
  int get page;
  bool get isLoadingMore;
  bool get hasReachedEnd;
  @JsonKey(ignore: true)
  _$$CharacterStateLoadedImplCopyWith<_$CharacterStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterStateErrorImplCopyWith<$Res> {
  factory _$$CharacterStateErrorImplCopyWith(_$CharacterStateErrorImpl value,
          $Res Function(_$CharacterStateErrorImpl) then) =
      __$$CharacterStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CharacterStateErrorImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateErrorImpl>
    implements _$$CharacterStateErrorImplCopyWith<$Res> {
  __$$CharacterStateErrorImplCopyWithImpl(_$CharacterStateErrorImpl _value,
      $Res Function(_$CharacterStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CharacterStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterStateErrorImpl implements CharacterStateError {
  const _$CharacterStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharacterState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateErrorImplCopyWith<_$CharacterStateErrorImpl> get copyWith =>
      __$$CharacterStateErrorImplCopyWithImpl<_$CharacterStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Result> allCharacters,
            List<Result> visibleCharacters,
            int page,
            bool isLoadingMore,
            bool hasReachedEnd)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Result> allCharacters, List<Result> visibleCharacters,
            int page, bool isLoadingMore, bool hasReachedEnd)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateInitial value) initial,
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterStateInitial value)? initial,
    TResult? Function(CharacterStateLoading value)? loading,
    TResult? Function(CharacterStateLoaded value)? loaded,
    TResult? Function(CharacterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateInitial value)? initial,
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterStateError implements CharacterState {
  const factory CharacterStateError(final String message) =
      _$CharacterStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CharacterStateErrorImplCopyWith<_$CharacterStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
