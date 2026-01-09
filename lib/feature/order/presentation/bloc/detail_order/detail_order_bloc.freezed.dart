// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailOrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailOrderEvent()';
}


}

/// @nodoc
class $DetailOrderEventCopyWith<$Res>  {
$DetailOrderEventCopyWith(DetailOrderEvent _, $Res Function(DetailOrderEvent) __);
}


/// Adds pattern-matching-related methods to [DetailOrderEvent].
extension DetailOrderEventPatterns on DetailOrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DetailOrder value)?  detailOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DetailOrder() when detailOrder != null:
return detailOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DetailOrder value)  detailOrder,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DetailOrder():
return detailOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DetailOrder value)?  detailOrder,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DetailOrder() when detailOrder != null:
return detailOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int id)?  detailOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DetailOrder() when detailOrder != null:
return detailOrder(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int id)  detailOrder,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DetailOrder():
return detailOrder(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int id)?  detailOrder,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DetailOrder() when detailOrder != null:
return detailOrder(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DetailOrderEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailOrderEvent.started()';
}


}




/// @nodoc


class _DetailOrder implements DetailOrderEvent {
  const _DetailOrder(this.id);
  

 final  int id;

/// Create a copy of DetailOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailOrderCopyWith<_DetailOrder> get copyWith => __$DetailOrderCopyWithImpl<_DetailOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailOrder&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DetailOrderEvent.detailOrder(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DetailOrderCopyWith<$Res> implements $DetailOrderEventCopyWith<$Res> {
  factory _$DetailOrderCopyWith(_DetailOrder value, $Res Function(_DetailOrder) _then) = __$DetailOrderCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DetailOrderCopyWithImpl<$Res>
    implements _$DetailOrderCopyWith<$Res> {
  __$DetailOrderCopyWithImpl(this._self, this._then);

  final _DetailOrder _self;
  final $Res Function(_DetailOrder) _then;

/// Create a copy of DetailOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DetailOrder(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DetailOrderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailOrderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailOrderState()';
}


}

/// @nodoc
class $DetailOrderStateCopyWith<$Res>  {
$DetailOrderStateCopyWith(DetailOrderState _, $Res Function(DetailOrderState) __);
}


/// Adds pattern-matching-related methods to [DetailOrderState].
extension DetailOrderStatePatterns on DetailOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingDetailOrder value)?  loadingDetailOrder,TResult Function( DetailOrderSuccess value)?  detailOrderSuccess,TResult Function( ErrorDetailOrder value)?  errorDetailOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingDetailOrder() when loadingDetailOrder != null:
return loadingDetailOrder(_that);case DetailOrderSuccess() when detailOrderSuccess != null:
return detailOrderSuccess(_that);case ErrorDetailOrder() when errorDetailOrder != null:
return errorDetailOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingDetailOrder value)  loadingDetailOrder,required TResult Function( DetailOrderSuccess value)  detailOrderSuccess,required TResult Function( ErrorDetailOrder value)  errorDetailOrder,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingDetailOrder():
return loadingDetailOrder(_that);case DetailOrderSuccess():
return detailOrderSuccess(_that);case ErrorDetailOrder():
return errorDetailOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingDetailOrder value)?  loadingDetailOrder,TResult? Function( DetailOrderSuccess value)?  detailOrderSuccess,TResult? Function( ErrorDetailOrder value)?  errorDetailOrder,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingDetailOrder() when loadingDetailOrder != null:
return loadingDetailOrder(_that);case DetailOrderSuccess() when detailOrderSuccess != null:
return detailOrderSuccess(_that);case ErrorDetailOrder() when errorDetailOrder != null:
return errorDetailOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingDetailOrder,TResult Function( DetailOrderResponseModel detail)?  detailOrderSuccess,TResult Function( String message)?  errorDetailOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingDetailOrder() when loadingDetailOrder != null:
return loadingDetailOrder();case DetailOrderSuccess() when detailOrderSuccess != null:
return detailOrderSuccess(_that.detail);case ErrorDetailOrder() when errorDetailOrder != null:
return errorDetailOrder(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingDetailOrder,required TResult Function( DetailOrderResponseModel detail)  detailOrderSuccess,required TResult Function( String message)  errorDetailOrder,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingDetailOrder():
return loadingDetailOrder();case DetailOrderSuccess():
return detailOrderSuccess(_that.detail);case ErrorDetailOrder():
return errorDetailOrder(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingDetailOrder,TResult? Function( DetailOrderResponseModel detail)?  detailOrderSuccess,TResult? Function( String message)?  errorDetailOrder,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingDetailOrder() when loadingDetailOrder != null:
return loadingDetailOrder();case DetailOrderSuccess() when detailOrderSuccess != null:
return detailOrderSuccess(_that.detail);case ErrorDetailOrder() when errorDetailOrder != null:
return errorDetailOrder(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements DetailOrderState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailOrderState.initial()';
}


}




/// @nodoc


class LoadingDetailOrder implements DetailOrderState {
  const LoadingDetailOrder();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingDetailOrder);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailOrderState.loadingDetailOrder()';
}


}




/// @nodoc


class DetailOrderSuccess implements DetailOrderState {
  const DetailOrderSuccess(this.detail);
  

 final  DetailOrderResponseModel detail;

/// Create a copy of DetailOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailOrderSuccessCopyWith<DetailOrderSuccess> get copyWith => _$DetailOrderSuccessCopyWithImpl<DetailOrderSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailOrderSuccess&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'DetailOrderState.detailOrderSuccess(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $DetailOrderSuccessCopyWith<$Res> implements $DetailOrderStateCopyWith<$Res> {
  factory $DetailOrderSuccessCopyWith(DetailOrderSuccess value, $Res Function(DetailOrderSuccess) _then) = _$DetailOrderSuccessCopyWithImpl;
@useResult
$Res call({
 DetailOrderResponseModel detail
});




}
/// @nodoc
class _$DetailOrderSuccessCopyWithImpl<$Res>
    implements $DetailOrderSuccessCopyWith<$Res> {
  _$DetailOrderSuccessCopyWithImpl(this._self, this._then);

  final DetailOrderSuccess _self;
  final $Res Function(DetailOrderSuccess) _then;

/// Create a copy of DetailOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(DetailOrderSuccess(
null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as DetailOrderResponseModel,
  ));
}


}

/// @nodoc


class ErrorDetailOrder implements DetailOrderState {
  const ErrorDetailOrder(this.message);
  

 final  String message;

/// Create a copy of DetailOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailOrderCopyWith<ErrorDetailOrder> get copyWith => _$ErrorDetailOrderCopyWithImpl<ErrorDetailOrder>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetailOrder&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DetailOrderState.errorDetailOrder(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailOrderCopyWith<$Res> implements $DetailOrderStateCopyWith<$Res> {
  factory $ErrorDetailOrderCopyWith(ErrorDetailOrder value, $Res Function(ErrorDetailOrder) _then) = _$ErrorDetailOrderCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorDetailOrderCopyWithImpl<$Res>
    implements $ErrorDetailOrderCopyWith<$Res> {
  _$ErrorDetailOrderCopyWithImpl(this._self, this._then);

  final ErrorDetailOrder _self;
  final $Res Function(ErrorDetailOrder) _then;

/// Create a copy of DetailOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorDetailOrder(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
