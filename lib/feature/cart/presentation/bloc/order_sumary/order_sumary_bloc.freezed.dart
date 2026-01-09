// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_sumary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderSumaryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSumaryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSumaryEvent()';
}


}

/// @nodoc
class $OrderSumaryEventCopyWith<$Res>  {
$OrderSumaryEventCopyWith(OrderSumaryEvent _, $Res Function(OrderSumaryEvent) __);
}


/// Adds pattern-matching-related methods to [OrderSumaryEvent].
extension OrderSumaryEventPatterns on OrderSumaryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _BuyNow value)?  buyNow,TResult Function( _BuyCart value)?  buyCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _BuyNow() when buyNow != null:
return buyNow(_that);case _BuyCart() when buyCart != null:
return buyCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _BuyNow value)  buyNow,required TResult Function( _BuyCart value)  buyCart,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _BuyNow():
return buyNow(_that);case _BuyCart():
return buyCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _BuyNow value)?  buyNow,TResult? Function( _BuyCart value)?  buyCart,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _BuyNow() when buyNow != null:
return buyNow(_that);case _BuyCart() when buyCart != null:
return buyCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( BuyNowRequestModel buy)?  buyNow,TResult Function( BuyCartRequestModel buy)?  buyCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _BuyNow() when buyNow != null:
return buyNow(_that.buy);case _BuyCart() when buyCart != null:
return buyCart(_that.buy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( BuyNowRequestModel buy)  buyNow,required TResult Function( BuyCartRequestModel buy)  buyCart,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _BuyNow():
return buyNow(_that.buy);case _BuyCart():
return buyCart(_that.buy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( BuyNowRequestModel buy)?  buyNow,TResult? Function( BuyCartRequestModel buy)?  buyCart,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _BuyNow() when buyNow != null:
return buyNow(_that.buy);case _BuyCart() when buyCart != null:
return buyCart(_that.buy);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements OrderSumaryEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSumaryEvent.started()';
}


}




/// @nodoc


class _BuyNow implements OrderSumaryEvent {
  const _BuyNow(this.buy);
  

 final  BuyNowRequestModel buy;

/// Create a copy of OrderSumaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyNowCopyWith<_BuyNow> get copyWith => __$BuyNowCopyWithImpl<_BuyNow>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyNow&&(identical(other.buy, buy) || other.buy == buy));
}


@override
int get hashCode => Object.hash(runtimeType,buy);

@override
String toString() {
  return 'OrderSumaryEvent.buyNow(buy: $buy)';
}


}

/// @nodoc
abstract mixin class _$BuyNowCopyWith<$Res> implements $OrderSumaryEventCopyWith<$Res> {
  factory _$BuyNowCopyWith(_BuyNow value, $Res Function(_BuyNow) _then) = __$BuyNowCopyWithImpl;
@useResult
$Res call({
 BuyNowRequestModel buy
});




}
/// @nodoc
class __$BuyNowCopyWithImpl<$Res>
    implements _$BuyNowCopyWith<$Res> {
  __$BuyNowCopyWithImpl(this._self, this._then);

  final _BuyNow _self;
  final $Res Function(_BuyNow) _then;

/// Create a copy of OrderSumaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? buy = null,}) {
  return _then(_BuyNow(
null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyNowRequestModel,
  ));
}


}

/// @nodoc


class _BuyCart implements OrderSumaryEvent {
  const _BuyCart(this.buy);
  

 final  BuyCartRequestModel buy;

/// Create a copy of OrderSumaryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyCartCopyWith<_BuyCart> get copyWith => __$BuyCartCopyWithImpl<_BuyCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyCart&&(identical(other.buy, buy) || other.buy == buy));
}


@override
int get hashCode => Object.hash(runtimeType,buy);

@override
String toString() {
  return 'OrderSumaryEvent.buyCart(buy: $buy)';
}


}

/// @nodoc
abstract mixin class _$BuyCartCopyWith<$Res> implements $OrderSumaryEventCopyWith<$Res> {
  factory _$BuyCartCopyWith(_BuyCart value, $Res Function(_BuyCart) _then) = __$BuyCartCopyWithImpl;
@useResult
$Res call({
 BuyCartRequestModel buy
});




}
/// @nodoc
class __$BuyCartCopyWithImpl<$Res>
    implements _$BuyCartCopyWith<$Res> {
  __$BuyCartCopyWithImpl(this._self, this._then);

  final _BuyCart _self;
  final $Res Function(_BuyCart) _then;

/// Create a copy of OrderSumaryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? buy = null,}) {
  return _then(_BuyCart(
null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as BuyCartRequestModel,
  ));
}


}

/// @nodoc
mixin _$OrderSumaryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSumaryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSumaryState()';
}


}

/// @nodoc
class $OrderSumaryStateCopyWith<$Res>  {
$OrderSumaryStateCopyWith(OrderSumaryState _, $Res Function(OrderSumaryState) __);
}


/// Adds pattern-matching-related methods to [OrderSumaryState].
extension OrderSumaryStatePatterns on OrderSumaryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingOrderSumary value)?  loadingOrderSumary,TResult Function( BuyNowSuccess value)?  buyNowSuccess,TResult Function( BuyCartSuccess value)?  buyCartSuccess,TResult Function( ErrorOrderSumary value)?  errorOrderSumary,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingOrderSumary() when loadingOrderSumary != null:
return loadingOrderSumary(_that);case BuyNowSuccess() when buyNowSuccess != null:
return buyNowSuccess(_that);case BuyCartSuccess() when buyCartSuccess != null:
return buyCartSuccess(_that);case ErrorOrderSumary() when errorOrderSumary != null:
return errorOrderSumary(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingOrderSumary value)  loadingOrderSumary,required TResult Function( BuyNowSuccess value)  buyNowSuccess,required TResult Function( BuyCartSuccess value)  buyCartSuccess,required TResult Function( ErrorOrderSumary value)  errorOrderSumary,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingOrderSumary():
return loadingOrderSumary(_that);case BuyNowSuccess():
return buyNowSuccess(_that);case BuyCartSuccess():
return buyCartSuccess(_that);case ErrorOrderSumary():
return errorOrderSumary(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingOrderSumary value)?  loadingOrderSumary,TResult? Function( BuyNowSuccess value)?  buyNowSuccess,TResult? Function( BuyCartSuccess value)?  buyCartSuccess,TResult? Function( ErrorOrderSumary value)?  errorOrderSumary,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingOrderSumary() when loadingOrderSumary != null:
return loadingOrderSumary(_that);case BuyNowSuccess() when buyNowSuccess != null:
return buyNowSuccess(_that);case BuyCartSuccess() when buyCartSuccess != null:
return buyCartSuccess(_that);case ErrorOrderSumary() when errorOrderSumary != null:
return errorOrderSumary(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingOrderSumary,TResult Function( BuyNowResponseModel buyNow)?  buyNowSuccess,TResult Function( BuyCartResponseModel buyCart)?  buyCartSuccess,TResult Function( String message)?  errorOrderSumary,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingOrderSumary() when loadingOrderSumary != null:
return loadingOrderSumary();case BuyNowSuccess() when buyNowSuccess != null:
return buyNowSuccess(_that.buyNow);case BuyCartSuccess() when buyCartSuccess != null:
return buyCartSuccess(_that.buyCart);case ErrorOrderSumary() when errorOrderSumary != null:
return errorOrderSumary(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingOrderSumary,required TResult Function( BuyNowResponseModel buyNow)  buyNowSuccess,required TResult Function( BuyCartResponseModel buyCart)  buyCartSuccess,required TResult Function( String message)  errorOrderSumary,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingOrderSumary():
return loadingOrderSumary();case BuyNowSuccess():
return buyNowSuccess(_that.buyNow);case BuyCartSuccess():
return buyCartSuccess(_that.buyCart);case ErrorOrderSumary():
return errorOrderSumary(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingOrderSumary,TResult? Function( BuyNowResponseModel buyNow)?  buyNowSuccess,TResult? Function( BuyCartResponseModel buyCart)?  buyCartSuccess,TResult? Function( String message)?  errorOrderSumary,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingOrderSumary() when loadingOrderSumary != null:
return loadingOrderSumary();case BuyNowSuccess() when buyNowSuccess != null:
return buyNowSuccess(_that.buyNow);case BuyCartSuccess() when buyCartSuccess != null:
return buyCartSuccess(_that.buyCart);case ErrorOrderSumary() when errorOrderSumary != null:
return errorOrderSumary(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements OrderSumaryState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSumaryState.initial()';
}


}




/// @nodoc


class LoadingOrderSumary implements OrderSumaryState {
  const LoadingOrderSumary();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingOrderSumary);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrderSumaryState.loadingOrderSumary()';
}


}




/// @nodoc


class BuyNowSuccess implements OrderSumaryState {
  const BuyNowSuccess(this.buyNow);
  

 final  BuyNowResponseModel buyNow;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyNowSuccessCopyWith<BuyNowSuccess> get copyWith => _$BuyNowSuccessCopyWithImpl<BuyNowSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyNowSuccess&&(identical(other.buyNow, buyNow) || other.buyNow == buyNow));
}


@override
int get hashCode => Object.hash(runtimeType,buyNow);

@override
String toString() {
  return 'OrderSumaryState.buyNowSuccess(buyNow: $buyNow)';
}


}

/// @nodoc
abstract mixin class $BuyNowSuccessCopyWith<$Res> implements $OrderSumaryStateCopyWith<$Res> {
  factory $BuyNowSuccessCopyWith(BuyNowSuccess value, $Res Function(BuyNowSuccess) _then) = _$BuyNowSuccessCopyWithImpl;
@useResult
$Res call({
 BuyNowResponseModel buyNow
});




}
/// @nodoc
class _$BuyNowSuccessCopyWithImpl<$Res>
    implements $BuyNowSuccessCopyWith<$Res> {
  _$BuyNowSuccessCopyWithImpl(this._self, this._then);

  final BuyNowSuccess _self;
  final $Res Function(BuyNowSuccess) _then;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? buyNow = null,}) {
  return _then(BuyNowSuccess(
null == buyNow ? _self.buyNow : buyNow // ignore: cast_nullable_to_non_nullable
as BuyNowResponseModel,
  ));
}


}

/// @nodoc


class BuyCartSuccess implements OrderSumaryState {
  const BuyCartSuccess(this.buyCart);
  

 final  BuyCartResponseModel buyCart;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyCartSuccessCopyWith<BuyCartSuccess> get copyWith => _$BuyCartSuccessCopyWithImpl<BuyCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyCartSuccess&&(identical(other.buyCart, buyCart) || other.buyCart == buyCart));
}


@override
int get hashCode => Object.hash(runtimeType,buyCart);

@override
String toString() {
  return 'OrderSumaryState.buyCartSuccess(buyCart: $buyCart)';
}


}

/// @nodoc
abstract mixin class $BuyCartSuccessCopyWith<$Res> implements $OrderSumaryStateCopyWith<$Res> {
  factory $BuyCartSuccessCopyWith(BuyCartSuccess value, $Res Function(BuyCartSuccess) _then) = _$BuyCartSuccessCopyWithImpl;
@useResult
$Res call({
 BuyCartResponseModel buyCart
});




}
/// @nodoc
class _$BuyCartSuccessCopyWithImpl<$Res>
    implements $BuyCartSuccessCopyWith<$Res> {
  _$BuyCartSuccessCopyWithImpl(this._self, this._then);

  final BuyCartSuccess _self;
  final $Res Function(BuyCartSuccess) _then;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? buyCart = null,}) {
  return _then(BuyCartSuccess(
null == buyCart ? _self.buyCart : buyCart // ignore: cast_nullable_to_non_nullable
as BuyCartResponseModel,
  ));
}


}

/// @nodoc


class ErrorOrderSumary implements OrderSumaryState {
  const ErrorOrderSumary(this.message);
  

 final  String message;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorOrderSumaryCopyWith<ErrorOrderSumary> get copyWith => _$ErrorOrderSumaryCopyWithImpl<ErrorOrderSumary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorOrderSumary&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OrderSumaryState.errorOrderSumary(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorOrderSumaryCopyWith<$Res> implements $OrderSumaryStateCopyWith<$Res> {
  factory $ErrorOrderSumaryCopyWith(ErrorOrderSumary value, $Res Function(ErrorOrderSumary) _then) = _$ErrorOrderSumaryCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorOrderSumaryCopyWithImpl<$Res>
    implements $ErrorOrderSumaryCopyWith<$Res> {
  _$ErrorOrderSumaryCopyWithImpl(this._self, this._then);

  final ErrorOrderSumary _self;
  final $Res Function(ErrorOrderSumary) _then;

/// Create a copy of OrderSumaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorOrderSumary(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
