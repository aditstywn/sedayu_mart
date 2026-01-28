// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CityEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityEvent()';
}


}

/// @nodoc
class $CityEventCopyWith<$Res>  {
$CityEventCopyWith(CityEvent _, $Res Function(CityEvent) __);
}


/// Adds pattern-matching-related methods to [CityEvent].
extension CityEventPatterns on CityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _City value)?  city,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _City() when city != null:
return city(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _City value)  city,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _City():
return city(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _City value)?  city,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _City() when city != null:
return city(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  city,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _City() when city != null:
return city();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  city,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _City():
return city();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  city,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _City() when city != null:
return city();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CityEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityEvent.started()';
}


}




/// @nodoc


class _City implements CityEvent {
  const _City();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _City);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityEvent.city()';
}


}




/// @nodoc
mixin _$CityState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityState()';
}


}

/// @nodoc
class $CityStateCopyWith<$Res>  {
$CityStateCopyWith(CityState _, $Res Function(CityState) __);
}


/// Adds pattern-matching-related methods to [CityState].
extension CityStatePatterns on CityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingCity value)?  loadingCity,TResult Function( CitySuccess value)?  citySuccess,TResult Function( ErrorCity value)?  errorCity,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCity() when loadingCity != null:
return loadingCity(_that);case CitySuccess() when citySuccess != null:
return citySuccess(_that);case ErrorCity() when errorCity != null:
return errorCity(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingCity value)  loadingCity,required TResult Function( CitySuccess value)  citySuccess,required TResult Function( ErrorCity value)  errorCity,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingCity():
return loadingCity(_that);case CitySuccess():
return citySuccess(_that);case ErrorCity():
return errorCity(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingCity value)?  loadingCity,TResult? Function( CitySuccess value)?  citySuccess,TResult? Function( ErrorCity value)?  errorCity,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCity() when loadingCity != null:
return loadingCity(_that);case CitySuccess() when citySuccess != null:
return citySuccess(_that);case ErrorCity() when errorCity != null:
return errorCity(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingCity,TResult Function( CityResponseModel city)?  citySuccess,TResult Function( String message)?  errorCity,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCity() when loadingCity != null:
return loadingCity();case CitySuccess() when citySuccess != null:
return citySuccess(_that.city);case ErrorCity() when errorCity != null:
return errorCity(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingCity,required TResult Function( CityResponseModel city)  citySuccess,required TResult Function( String message)  errorCity,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingCity():
return loadingCity();case CitySuccess():
return citySuccess(_that.city);case ErrorCity():
return errorCity(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingCity,TResult? Function( CityResponseModel city)?  citySuccess,TResult? Function( String message)?  errorCity,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCity() when loadingCity != null:
return loadingCity();case CitySuccess() when citySuccess != null:
return citySuccess(_that.city);case ErrorCity() when errorCity != null:
return errorCity(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements CityState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityState.initial()';
}


}




/// @nodoc


class LoadingCity implements CityState {
  const LoadingCity();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingCity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CityState.loadingCity()';
}


}




/// @nodoc


class CitySuccess implements CityState {
  const CitySuccess(this.city);
  

 final  CityResponseModel city;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitySuccessCopyWith<CitySuccess> get copyWith => _$CitySuccessCopyWithImpl<CitySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitySuccess&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,city);

@override
String toString() {
  return 'CityState.citySuccess(city: $city)';
}


}

/// @nodoc
abstract mixin class $CitySuccessCopyWith<$Res> implements $CityStateCopyWith<$Res> {
  factory $CitySuccessCopyWith(CitySuccess value, $Res Function(CitySuccess) _then) = _$CitySuccessCopyWithImpl;
@useResult
$Res call({
 CityResponseModel city
});




}
/// @nodoc
class _$CitySuccessCopyWithImpl<$Res>
    implements $CitySuccessCopyWith<$Res> {
  _$CitySuccessCopyWithImpl(this._self, this._then);

  final CitySuccess _self;
  final $Res Function(CitySuccess) _then;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? city = null,}) {
  return _then(CitySuccess(
null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as CityResponseModel,
  ));
}


}

/// @nodoc


class ErrorCity implements CityState {
  const ErrorCity(this.message);
  

 final  String message;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCityCopyWith<ErrorCity> get copyWith => _$ErrorCityCopyWithImpl<ErrorCity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorCity&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CityState.errorCity(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCityCopyWith<$Res> implements $CityStateCopyWith<$Res> {
  factory $ErrorCityCopyWith(ErrorCity value, $Res Function(ErrorCity) _then) = _$ErrorCityCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCityCopyWithImpl<$Res>
    implements $ErrorCityCopyWith<$Res> {
  _$ErrorCityCopyWithImpl(this._self, this._then);

  final ErrorCity _self;
  final $Res Function(ErrorCity) _then;

/// Create a copy of CityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorCity(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
