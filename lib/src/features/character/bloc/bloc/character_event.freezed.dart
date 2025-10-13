// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterEvent()';
}


}

/// @nodoc
class $CharacterEventCopyWith<$Res>  {
$CharacterEventCopyWith(CharacterEvent _, $Res Function(CharacterEvent) __);
}


/// Adds pattern-matching-related methods to [CharacterEvent].
extension CharacterEventPatterns on CharacterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CharacterEventStarted value)?  started,TResult Function( CharacterEventLoadMore value)?  loadMore,TResult Function( CharacterEventRefresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CharacterEventStarted() when started != null:
return started(_that);case CharacterEventLoadMore() when loadMore != null:
return loadMore(_that);case CharacterEventRefresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CharacterEventStarted value)  started,required TResult Function( CharacterEventLoadMore value)  loadMore,required TResult Function( CharacterEventRefresh value)  refresh,}){
final _that = this;
switch (_that) {
case CharacterEventStarted():
return started(_that);case CharacterEventLoadMore():
return loadMore(_that);case CharacterEventRefresh():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CharacterEventStarted value)?  started,TResult? Function( CharacterEventLoadMore value)?  loadMore,TResult? Function( CharacterEventRefresh value)?  refresh,}){
final _that = this;
switch (_that) {
case CharacterEventStarted() when started != null:
return started(_that);case CharacterEventLoadMore() when loadMore != null:
return loadMore(_that);case CharacterEventRefresh() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  int page)?  started,TResult Function()?  loadMore,TResult Function( String? name)?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CharacterEventStarted() when started != null:
return started(_that.name,_that.page);case CharacterEventLoadMore() when loadMore != null:
return loadMore();case CharacterEventRefresh() when refresh != null:
return refresh(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  int page)  started,required TResult Function()  loadMore,required TResult Function( String? name)  refresh,}) {final _that = this;
switch (_that) {
case CharacterEventStarted():
return started(_that.name,_that.page);case CharacterEventLoadMore():
return loadMore();case CharacterEventRefresh():
return refresh(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  int page)?  started,TResult? Function()?  loadMore,TResult? Function( String? name)?  refresh,}) {final _that = this;
switch (_that) {
case CharacterEventStarted() when started != null:
return started(_that.name,_that.page);case CharacterEventLoadMore() when loadMore != null:
return loadMore();case CharacterEventRefresh() when refresh != null:
return refresh(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class CharacterEventStarted implements CharacterEvent {
  const CharacterEventStarted({required this.name, required this.page});
  

 final  String name;
 final  int page;

/// Create a copy of CharacterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterEventStartedCopyWith<CharacterEventStarted> get copyWith => _$CharacterEventStartedCopyWithImpl<CharacterEventStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterEventStarted&&(identical(other.name, name) || other.name == name)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,name,page);

@override
String toString() {
  return 'CharacterEvent.started(name: $name, page: $page)';
}


}

/// @nodoc
abstract mixin class $CharacterEventStartedCopyWith<$Res> implements $CharacterEventCopyWith<$Res> {
  factory $CharacterEventStartedCopyWith(CharacterEventStarted value, $Res Function(CharacterEventStarted) _then) = _$CharacterEventStartedCopyWithImpl;
@useResult
$Res call({
 String name, int page
});




}
/// @nodoc
class _$CharacterEventStartedCopyWithImpl<$Res>
    implements $CharacterEventStartedCopyWith<$Res> {
  _$CharacterEventStartedCopyWithImpl(this._self, this._then);

  final CharacterEventStarted _self;
  final $Res Function(CharacterEventStarted) _then;

/// Create a copy of CharacterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? page = null,}) {
  return _then(CharacterEventStarted(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CharacterEventLoadMore implements CharacterEvent {
  const CharacterEventLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterEventLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CharacterEvent.loadMore()';
}


}




/// @nodoc


class CharacterEventRefresh implements CharacterEvent {
  const CharacterEventRefresh({this.name});
  

 final  String? name;

/// Create a copy of CharacterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterEventRefreshCopyWith<CharacterEventRefresh> get copyWith => _$CharacterEventRefreshCopyWithImpl<CharacterEventRefresh>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterEventRefresh&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CharacterEvent.refresh(name: $name)';
}


}

/// @nodoc
abstract mixin class $CharacterEventRefreshCopyWith<$Res> implements $CharacterEventCopyWith<$Res> {
  factory $CharacterEventRefreshCopyWith(CharacterEventRefresh value, $Res Function(CharacterEventRefresh) _then) = _$CharacterEventRefreshCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$CharacterEventRefreshCopyWithImpl<$Res>
    implements $CharacterEventRefreshCopyWith<$Res> {
  _$CharacterEventRefreshCopyWithImpl(this._self, this._then);

  final CharacterEventRefresh _self;
  final $Res Function(CharacterEventRefresh) _then;

/// Create a copy of CharacterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(CharacterEventRefresh(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
