// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterState()';
}


}

/// @nodoc
class $CharacterStateCopyWith<$Res>  {
$CharacterStateCopyWith(CharacterState _, $Res Function(CharacterState) __);
}


/// Adds pattern-matching-related methods to [CharacterState].
extension CharacterStatePatterns on CharacterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharacterStateInitial value)?  initial,TResult Function( CharacterStateLoading value)?  loading,TResult Function( CharacterStateLoaded value)?  loaded,TResult Function( CharacterStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharacterStateInitial() when initial != null:
return initial(_that);case CharacterStateLoading() when loading != null:
return loading(_that);case CharacterStateLoaded() when loaded != null:
return loaded(_that);case CharacterStateError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharacterStateInitial value)  initial,required TResult Function( CharacterStateLoading value)  loading,required TResult Function( CharacterStateLoaded value)  loaded,required TResult Function( CharacterStateError value)  error,}){
final _that = this;
switch (_that) {
case CharacterStateInitial():
return initial(_that);case CharacterStateLoading():
return loading(_that);case CharacterStateLoaded():
return loaded(_that);case CharacterStateError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharacterStateInitial value)?  initial,TResult? Function( CharacterStateLoading value)?  loading,TResult? Function( CharacterStateLoaded value)?  loaded,TResult? Function( CharacterStateError value)?  error,}){
final _that = this;
switch (_that) {
case CharacterStateInitial() when initial != null:
return initial(_that);case CharacterStateLoading() when loading != null:
return loading(_that);case CharacterStateLoaded() when loaded != null:
return loaded(_that);case CharacterStateError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CharacterModel characters,  int page)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharacterStateInitial() when initial != null:
return initial();case CharacterStateLoading() when loading != null:
return loading();case CharacterStateLoaded() when loaded != null:
return loaded(_that.characters,_that.page);case CharacterStateError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CharacterModel characters,  int page)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CharacterStateInitial():
return initial();case CharacterStateLoading():
return loading();case CharacterStateLoaded():
return loaded(_that.characters,_that.page);case CharacterStateError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CharacterModel characters,  int page)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CharacterStateInitial() when initial != null:
return initial();case CharacterStateLoading() when loading != null:
return loading();case CharacterStateLoaded() when loaded != null:
return loaded(_that.characters,_that.page);case CharacterStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CharacterStateInitial implements CharacterState {
  const CharacterStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterState.initial()';
}


}




/// @nodoc


class CharacterStateLoading implements CharacterState {
  const CharacterStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterState.loading()';
}


}




/// @nodoc


class CharacterStateLoaded implements CharacterState {
  const CharacterStateLoaded({required this.characters, required this.page});
  

 final  CharacterModel characters;
 final  int page;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterStateLoadedCopyWith<CharacterStateLoaded> get copyWith => _$CharacterStateLoadedCopyWithImpl<CharacterStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterStateLoaded&&(identical(other.characters, characters) || other.characters == characters)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,characters,page);

@override
String toString() {
  return 'CharacterState.loaded(characters: $characters, page: $page)';
}


}

/// @nodoc
abstract mixin class $CharacterStateLoadedCopyWith<$Res> implements $CharacterStateCopyWith<$Res> {
  factory $CharacterStateLoadedCopyWith(CharacterStateLoaded value, $Res Function(CharacterStateLoaded) _then) = _$CharacterStateLoadedCopyWithImpl;
@useResult
$Res call({
 CharacterModel characters, int page
});


$CharacterModelCopyWith<$Res> get characters;

}
/// @nodoc
class _$CharacterStateLoadedCopyWithImpl<$Res>
    implements $CharacterStateLoadedCopyWith<$Res> {
  _$CharacterStateLoadedCopyWithImpl(this._self, this._then);

  final CharacterStateLoaded _self;
  final $Res Function(CharacterStateLoaded) _then;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? page = null,}) {
  return _then(CharacterStateLoaded(
characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as CharacterModel,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterModelCopyWith<$Res> get characters {
  
  return $CharacterModelCopyWith<$Res>(_self.characters, (value) {
    return _then(_self.copyWith(characters: value));
  });
}
}

/// @nodoc


class CharacterStateError implements CharacterState {
  const CharacterStateError(this.message);
  

 final  String message;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterStateErrorCopyWith<CharacterStateError> get copyWith => _$CharacterStateErrorCopyWithImpl<CharacterStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CharacterState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CharacterStateErrorCopyWith<$Res> implements $CharacterStateCopyWith<$Res> {
  factory $CharacterStateErrorCopyWith(CharacterStateError value, $Res Function(CharacterStateError) _then) = _$CharacterStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CharacterStateErrorCopyWithImpl<$Res>
    implements $CharacterStateErrorCopyWith<$Res> {
  _$CharacterStateErrorCopyWithImpl(this._self, this._then);

  final CharacterStateError _self;
  final $Res Function(CharacterStateError) _then;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CharacterStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
