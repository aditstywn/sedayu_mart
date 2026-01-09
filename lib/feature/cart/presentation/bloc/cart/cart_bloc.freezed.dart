// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetCart value)?  getCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetCart() when getCart != null:
return getCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetCart value)  getCart,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetCart():
return getCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetCart value)?  getCart,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetCart() when getCart != null:
return getCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetCart() when getCart != null:
return getCart();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getCart,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetCart():
return getCart();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getCart,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetCart() when getCart != null:
return getCart();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CartEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.started()';
}


}




/// @nodoc


class _GetCart implements CartEvent {
  const _GetCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.getCart()';
}


}




/// @nodoc
mixin _$CartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState()';
}


}

/// @nodoc
class $CartStateCopyWith<$Res>  {
$CartStateCopyWith(CartState _, $Res Function(CartState) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingCart value)?  loadingCart,TResult Function( GetCartSuccess value)?  getCartSuccess,TResult Function( CartError value)?  cartError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCart() when loadingCart != null:
return loadingCart(_that);case GetCartSuccess() when getCartSuccess != null:
return getCartSuccess(_that);case CartError() when cartError != null:
return cartError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingCart value)  loadingCart,required TResult Function( GetCartSuccess value)  getCartSuccess,required TResult Function( CartError value)  cartError,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingCart():
return loadingCart(_that);case GetCartSuccess():
return getCartSuccess(_that);case CartError():
return cartError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingCart value)?  loadingCart,TResult? Function( GetCartSuccess value)?  getCartSuccess,TResult? Function( CartError value)?  cartError,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCart() when loadingCart != null:
return loadingCart(_that);case GetCartSuccess() when getCartSuccess != null:
return getCartSuccess(_that);case CartError() when cartError != null:
return cartError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingCart,TResult Function( CartResponseModel cart)?  getCartSuccess,TResult Function( String message)?  cartError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCart() when loadingCart != null:
return loadingCart();case GetCartSuccess() when getCartSuccess != null:
return getCartSuccess(_that.cart);case CartError() when cartError != null:
return cartError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingCart,required TResult Function( CartResponseModel cart)  getCartSuccess,required TResult Function( String message)  cartError,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingCart():
return loadingCart();case GetCartSuccess():
return getCartSuccess(_that.cart);case CartError():
return cartError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingCart,TResult? Function( CartResponseModel cart)?  getCartSuccess,TResult? Function( String message)?  cartError,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCart() when loadingCart != null:
return loadingCart();case GetCartSuccess() when getCartSuccess != null:
return getCartSuccess(_that.cart);case CartError() when cartError != null:
return cartError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements CartState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.initial()';
}


}




/// @nodoc


class LoadingCart implements CartState {
  const LoadingCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.loadingCart()';
}


}




/// @nodoc


class GetCartSuccess implements CartState {
  const GetCartSuccess(this.cart);
  

 final  CartResponseModel cart;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartSuccessCopyWith<GetCartSuccess> get copyWith => _$GetCartSuccessCopyWithImpl<GetCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartSuccess&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'CartState.getCartSuccess(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $GetCartSuccessCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $GetCartSuccessCopyWith(GetCartSuccess value, $Res Function(GetCartSuccess) _then) = _$GetCartSuccessCopyWithImpl;
@useResult
$Res call({
 CartResponseModel cart
});




}
/// @nodoc
class _$GetCartSuccessCopyWithImpl<$Res>
    implements $GetCartSuccessCopyWith<$Res> {
  _$GetCartSuccessCopyWithImpl(this._self, this._then);

  final GetCartSuccess _self;
  final $Res Function(GetCartSuccess) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(GetCartSuccess(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as CartResponseModel,
  ));
}


}

/// @nodoc


class CartError implements CartState {
  const CartError(this.message);
  

 final  String message;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartErrorCopyWith<CartError> get copyWith => _$CartErrorCopyWithImpl<CartError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartState.cartError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CartErrorCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartErrorCopyWith(CartError value, $Res Function(CartError) _then) = _$CartErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CartErrorCopyWithImpl<$Res>
    implements $CartErrorCopyWith<$Res> {
  _$CartErrorCopyWithImpl(this._self, this._then);

  final CartError _self;
  final $Res Function(CartError) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CartError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
