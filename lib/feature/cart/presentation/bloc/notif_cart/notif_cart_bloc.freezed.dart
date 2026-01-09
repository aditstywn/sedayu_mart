// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notif_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotifCartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotifCartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartEvent()';
}


}

/// @nodoc
class $NotifCartEventCopyWith<$Res>  {
$NotifCartEventCopyWith(NotifCartEvent _, $Res Function(NotifCartEvent) __);
}


/// Adds pattern-matching-related methods to [NotifCartEvent].
extension NotifCartEventPatterns on NotifCartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetItemCart value)?  getItemCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetItemCart() when getItemCart != null:
return getItemCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetItemCart value)  getItemCart,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetItemCart():
return getItemCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetItemCart value)?  getItemCart,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetItemCart() when getItemCart != null:
return getItemCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getItemCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetItemCart() when getItemCart != null:
return getItemCart();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getItemCart,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetItemCart():
return getItemCart();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getItemCart,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetItemCart() when getItemCart != null:
return getItemCart();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements NotifCartEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartEvent.started()';
}


}




/// @nodoc


class _GetItemCart implements NotifCartEvent {
  const _GetItemCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetItemCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartEvent.getItemCart()';
}


}




/// @nodoc
mixin _$NotifCartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotifCartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartState()';
}


}

/// @nodoc
class $NotifCartStateCopyWith<$Res>  {
$NotifCartStateCopyWith(NotifCartState _, $Res Function(NotifCartState) __);
}


/// Adds pattern-matching-related methods to [NotifCartState].
extension NotifCartStatePatterns on NotifCartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingNotifCart value)?  loadingNotifCart,TResult Function( GetItemCartSuccess value)?  getItemCartSuccess,TResult Function( ErrorNotifCart value)?  errorNotifCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingNotifCart() when loadingNotifCart != null:
return loadingNotifCart(_that);case GetItemCartSuccess() when getItemCartSuccess != null:
return getItemCartSuccess(_that);case ErrorNotifCart() when errorNotifCart != null:
return errorNotifCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingNotifCart value)  loadingNotifCart,required TResult Function( GetItemCartSuccess value)  getItemCartSuccess,required TResult Function( ErrorNotifCart value)  errorNotifCart,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingNotifCart():
return loadingNotifCart(_that);case GetItemCartSuccess():
return getItemCartSuccess(_that);case ErrorNotifCart():
return errorNotifCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingNotifCart value)?  loadingNotifCart,TResult? Function( GetItemCartSuccess value)?  getItemCartSuccess,TResult? Function( ErrorNotifCart value)?  errorNotifCart,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingNotifCart() when loadingNotifCart != null:
return loadingNotifCart(_that);case GetItemCartSuccess() when getItemCartSuccess != null:
return getItemCartSuccess(_that);case ErrorNotifCart() when errorNotifCart != null:
return errorNotifCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingNotifCart,TResult Function( CartResponseModel cart)?  getItemCartSuccess,TResult Function( String message)?  errorNotifCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingNotifCart() when loadingNotifCart != null:
return loadingNotifCart();case GetItemCartSuccess() when getItemCartSuccess != null:
return getItemCartSuccess(_that.cart);case ErrorNotifCart() when errorNotifCart != null:
return errorNotifCart(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingNotifCart,required TResult Function( CartResponseModel cart)  getItemCartSuccess,required TResult Function( String message)  errorNotifCart,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingNotifCart():
return loadingNotifCart();case GetItemCartSuccess():
return getItemCartSuccess(_that.cart);case ErrorNotifCart():
return errorNotifCart(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingNotifCart,TResult? Function( CartResponseModel cart)?  getItemCartSuccess,TResult? Function( String message)?  errorNotifCart,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingNotifCart() when loadingNotifCart != null:
return loadingNotifCart();case GetItemCartSuccess() when getItemCartSuccess != null:
return getItemCartSuccess(_that.cart);case ErrorNotifCart() when errorNotifCart != null:
return errorNotifCart(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements NotifCartState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartState.initial()';
}


}




/// @nodoc


class LoadingNotifCart implements NotifCartState {
  const LoadingNotifCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingNotifCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotifCartState.loadingNotifCart()';
}


}




/// @nodoc


class GetItemCartSuccess implements NotifCartState {
  const GetItemCartSuccess(this.cart);
  

 final  CartResponseModel cart;

/// Create a copy of NotifCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetItemCartSuccessCopyWith<GetItemCartSuccess> get copyWith => _$GetItemCartSuccessCopyWithImpl<GetItemCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetItemCartSuccess&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'NotifCartState.getItemCartSuccess(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $GetItemCartSuccessCopyWith<$Res> implements $NotifCartStateCopyWith<$Res> {
  factory $GetItemCartSuccessCopyWith(GetItemCartSuccess value, $Res Function(GetItemCartSuccess) _then) = _$GetItemCartSuccessCopyWithImpl;
@useResult
$Res call({
 CartResponseModel cart
});




}
/// @nodoc
class _$GetItemCartSuccessCopyWithImpl<$Res>
    implements $GetItemCartSuccessCopyWith<$Res> {
  _$GetItemCartSuccessCopyWithImpl(this._self, this._then);

  final GetItemCartSuccess _self;
  final $Res Function(GetItemCartSuccess) _then;

/// Create a copy of NotifCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(GetItemCartSuccess(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as CartResponseModel,
  ));
}


}

/// @nodoc


class ErrorNotifCart implements NotifCartState {
  const ErrorNotifCart(this.message);
  

 final  String message;

/// Create a copy of NotifCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorNotifCartCopyWith<ErrorNotifCart> get copyWith => _$ErrorNotifCartCopyWithImpl<ErrorNotifCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorNotifCart&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NotifCartState.errorNotifCart(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorNotifCartCopyWith<$Res> implements $NotifCartStateCopyWith<$Res> {
  factory $ErrorNotifCartCopyWith(ErrorNotifCart value, $Res Function(ErrorNotifCart) _then) = _$ErrorNotifCartCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorNotifCartCopyWithImpl<$Res>
    implements $ErrorNotifCartCopyWith<$Res> {
  _$ErrorNotifCartCopyWithImpl(this._self, this._then);

  final ErrorNotifCart _self;
  final $Res Function(ErrorNotifCart) _then;

/// Create a copy of NotifCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorNotifCart(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
