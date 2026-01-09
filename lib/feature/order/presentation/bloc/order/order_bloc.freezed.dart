// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent()';
}


}

/// @nodoc
class $OrderEventCopyWith<$Res>  {
$OrderEventCopyWith(OrderEvent _, $Res Function(OrderEvent) __);
}


/// Adds pattern-matching-related methods to [OrderEvent].
extension OrderEventPatterns on OrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetOrder value)?  getOrder,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetOrder() when getOrder != null:
return getOrder(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetOrder value)  getOrder,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetOrder():
return getOrder(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetOrder value)?  getOrder,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetOrder() when getOrder != null:
return getOrder(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getOrder,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetOrder() when getOrder != null:
return getOrder();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getOrder,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetOrder():
return getOrder();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getOrder,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetOrder() when getOrder != null:
return getOrder();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrderEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent.started()';
}


}




/// @nodoc


class _GetOrder implements OrderEvent {
  const _GetOrder();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrder);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderEvent.getOrder()';
}


}




/// @nodoc
mixin _$OrderState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState()';
}


}

/// @nodoc
class $OrderStateCopyWith<$Res>  {
$OrderStateCopyWith(OrderState _, $Res Function(OrderState) __);
}


/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingOrder value)?  loadingOrder,TResult Function( OrderSuccess value)?  orderSuccess,TResult Function( OrderError value)?  orderError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingOrder() when loadingOrder != null:
return loadingOrder(_that);case OrderSuccess() when orderSuccess != null:
return orderSuccess(_that);case OrderError() when orderError != null:
return orderError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingOrder value)  loadingOrder,required TResult Function( OrderSuccess value)  orderSuccess,required TResult Function( OrderError value)  orderError,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingOrder():
return loadingOrder(_that);case OrderSuccess():
return orderSuccess(_that);case OrderError():
return orderError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingOrder value)?  loadingOrder,TResult? Function( OrderSuccess value)?  orderSuccess,TResult? Function( OrderError value)?  orderError,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingOrder() when loadingOrder != null:
return loadingOrder(_that);case OrderSuccess() when orderSuccess != null:
return orderSuccess(_that);case OrderError() when orderError != null:
return orderError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingOrder,TResult Function( OrderResponseModel order)?  orderSuccess,TResult Function( String message)?  orderError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingOrder() when loadingOrder != null:
return loadingOrder();case OrderSuccess() when orderSuccess != null:
return orderSuccess(_that.order);case OrderError() when orderError != null:
return orderError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingOrder,required TResult Function( OrderResponseModel order)  orderSuccess,required TResult Function( String message)  orderError,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingOrder():
return loadingOrder();case OrderSuccess():
return orderSuccess(_that.order);case OrderError():
return orderError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingOrder,TResult? Function( OrderResponseModel order)?  orderSuccess,TResult? Function( String message)?  orderError,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingOrder() when loadingOrder != null:
return loadingOrder();case OrderSuccess() when orderSuccess != null:
return orderSuccess(_that.order);case OrderError() when orderError != null:
return orderError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements OrderState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState.initial()';
}


}




/// @nodoc


class LoadingOrder implements OrderState {
  const LoadingOrder();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingOrder);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderState.loadingOrder()';
}


}




/// @nodoc


class OrderSuccess implements OrderState {
  const OrderSuccess(this.order);
  

 final  OrderResponseModel order;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSuccessCopyWith<OrderSuccess> get copyWith => _$OrderSuccessCopyWithImpl<OrderSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSuccess&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,order);

@override
String toString() {
  return 'OrderState.orderSuccess(order: $order)';
}


}

/// @nodoc
abstract mixin class $OrderSuccessCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory $OrderSuccessCopyWith(OrderSuccess value, $Res Function(OrderSuccess) _then) = _$OrderSuccessCopyWithImpl;
@useResult
$Res call({
 OrderResponseModel order
});




}
/// @nodoc
class _$OrderSuccessCopyWithImpl<$Res>
    implements $OrderSuccessCopyWith<$Res> {
  _$OrderSuccessCopyWithImpl(this._self, this._then);

  final OrderSuccess _self;
  final $Res Function(OrderSuccess) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? order = null,}) {
  return _then(OrderSuccess(
null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as OrderResponseModel,
  ));
}


}

/// @nodoc


class OrderError implements OrderState {
  const OrderError(this.message);
  

 final  String message;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderErrorCopyWith<OrderError> get copyWith => _$OrderErrorCopyWithImpl<OrderError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OrderState.orderError(message: $message)';
}


}

/// @nodoc
abstract mixin class $OrderErrorCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory $OrderErrorCopyWith(OrderError value, $Res Function(OrderError) _then) = _$OrderErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OrderErrorCopyWithImpl<$Res>
    implements $OrderErrorCopyWith<$Res> {
  _$OrderErrorCopyWithImpl(this._self, this._then);

  final OrderError _self;
  final $Res Function(OrderError) _then;

/// Create a copy of OrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OrderError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
