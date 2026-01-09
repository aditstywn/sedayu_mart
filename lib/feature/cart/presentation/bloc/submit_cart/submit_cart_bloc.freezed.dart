// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitCartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCartEvent()';
}


}

/// @nodoc
class $SubmitCartEventCopyWith<$Res>  {
$SubmitCartEventCopyWith(SubmitCartEvent _, $Res Function(SubmitCartEvent) __);
}


/// Adds pattern-matching-related methods to [SubmitCartEvent].
extension SubmitCartEventPatterns on SubmitCartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DeleteCart value)?  deleteCart,TResult Function( _PlusStock value)?  plusStock,TResult Function( _ReduceStock value)?  reduceStock,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeleteCart() when deleteCart != null:
return deleteCart(_that);case _PlusStock() when plusStock != null:
return plusStock(_that);case _ReduceStock() when reduceStock != null:
return reduceStock(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DeleteCart value)  deleteCart,required TResult Function( _PlusStock value)  plusStock,required TResult Function( _ReduceStock value)  reduceStock,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DeleteCart():
return deleteCart(_that);case _PlusStock():
return plusStock(_that);case _ReduceStock():
return reduceStock(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DeleteCart value)?  deleteCart,TResult? Function( _PlusStock value)?  plusStock,TResult? Function( _ReduceStock value)?  reduceStock,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DeleteCart() when deleteCart != null:
return deleteCart(_that);case _PlusStock() when plusStock != null:
return plusStock(_that);case _ReduceStock() when reduceStock != null:
return reduceStock(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int id)?  deleteCart,TResult Function( UpdateCartRequestModel cart)?  plusStock,TResult Function( UpdateCartRequestModel cart)?  reduceStock,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeleteCart() when deleteCart != null:
return deleteCart(_that.id);case _PlusStock() when plusStock != null:
return plusStock(_that.cart);case _ReduceStock() when reduceStock != null:
return reduceStock(_that.cart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int id)  deleteCart,required TResult Function( UpdateCartRequestModel cart)  plusStock,required TResult Function( UpdateCartRequestModel cart)  reduceStock,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DeleteCart():
return deleteCart(_that.id);case _PlusStock():
return plusStock(_that.cart);case _ReduceStock():
return reduceStock(_that.cart);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int id)?  deleteCart,TResult? Function( UpdateCartRequestModel cart)?  plusStock,TResult? Function( UpdateCartRequestModel cart)?  reduceStock,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DeleteCart() when deleteCart != null:
return deleteCart(_that.id);case _PlusStock() when plusStock != null:
return plusStock(_that.cart);case _ReduceStock() when reduceStock != null:
return reduceStock(_that.cart);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SubmitCartEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCartEvent.started()';
}


}




/// @nodoc


class _DeleteCart implements SubmitCartEvent {
  const _DeleteCart(this.id);
  

 final  int id;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCartCopyWith<_DeleteCart> get copyWith => __$DeleteCartCopyWithImpl<_DeleteCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCart&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SubmitCartEvent.deleteCart(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteCartCopyWith<$Res> implements $SubmitCartEventCopyWith<$Res> {
  factory _$DeleteCartCopyWith(_DeleteCart value, $Res Function(_DeleteCart) _then) = __$DeleteCartCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteCartCopyWithImpl<$Res>
    implements _$DeleteCartCopyWith<$Res> {
  __$DeleteCartCopyWithImpl(this._self, this._then);

  final _DeleteCart _self;
  final $Res Function(_DeleteCart) _then;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteCart(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PlusStock implements SubmitCartEvent {
  const _PlusStock(this.cart);
  

 final  UpdateCartRequestModel cart;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlusStockCopyWith<_PlusStock> get copyWith => __$PlusStockCopyWithImpl<_PlusStock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlusStock&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'SubmitCartEvent.plusStock(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$PlusStockCopyWith<$Res> implements $SubmitCartEventCopyWith<$Res> {
  factory _$PlusStockCopyWith(_PlusStock value, $Res Function(_PlusStock) _then) = __$PlusStockCopyWithImpl;
@useResult
$Res call({
 UpdateCartRequestModel cart
});




}
/// @nodoc
class __$PlusStockCopyWithImpl<$Res>
    implements _$PlusStockCopyWith<$Res> {
  __$PlusStockCopyWithImpl(this._self, this._then);

  final _PlusStock _self;
  final $Res Function(_PlusStock) _then;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(_PlusStock(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as UpdateCartRequestModel,
  ));
}


}

/// @nodoc


class _ReduceStock implements SubmitCartEvent {
  const _ReduceStock(this.cart);
  

 final  UpdateCartRequestModel cart;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReduceStockCopyWith<_ReduceStock> get copyWith => __$ReduceStockCopyWithImpl<_ReduceStock>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReduceStock&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'SubmitCartEvent.reduceStock(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$ReduceStockCopyWith<$Res> implements $SubmitCartEventCopyWith<$Res> {
  factory _$ReduceStockCopyWith(_ReduceStock value, $Res Function(_ReduceStock) _then) = __$ReduceStockCopyWithImpl;
@useResult
$Res call({
 UpdateCartRequestModel cart
});




}
/// @nodoc
class __$ReduceStockCopyWithImpl<$Res>
    implements _$ReduceStockCopyWith<$Res> {
  __$ReduceStockCopyWithImpl(this._self, this._then);

  final _ReduceStock _self;
  final $Res Function(_ReduceStock) _then;

/// Create a copy of SubmitCartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(_ReduceStock(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as UpdateCartRequestModel,
  ));
}


}

/// @nodoc
mixin _$SubmitCartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCartState()';
}


}

/// @nodoc
class $SubmitCartStateCopyWith<$Res>  {
$SubmitCartStateCopyWith(SubmitCartState _, $Res Function(SubmitCartState) __);
}


/// Adds pattern-matching-related methods to [SubmitCartState].
extension SubmitCartStatePatterns on SubmitCartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingSubmitCart value)?  loadingSubmitCart,TResult Function( UpdateStockSuccess value)?  updateStockSuccess,TResult Function( DeleteCartSuccess value)?  deleteCartSuccess,TResult Function( ErrorSubmitCart value)?  errorSubmitCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitCart() when loadingSubmitCart != null:
return loadingSubmitCart(_that);case UpdateStockSuccess() when updateStockSuccess != null:
return updateStockSuccess(_that);case DeleteCartSuccess() when deleteCartSuccess != null:
return deleteCartSuccess(_that);case ErrorSubmitCart() when errorSubmitCart != null:
return errorSubmitCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingSubmitCart value)  loadingSubmitCart,required TResult Function( UpdateStockSuccess value)  updateStockSuccess,required TResult Function( DeleteCartSuccess value)  deleteCartSuccess,required TResult Function( ErrorSubmitCart value)  errorSubmitCart,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingSubmitCart():
return loadingSubmitCart(_that);case UpdateStockSuccess():
return updateStockSuccess(_that);case DeleteCartSuccess():
return deleteCartSuccess(_that);case ErrorSubmitCart():
return errorSubmitCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingSubmitCart value)?  loadingSubmitCart,TResult? Function( UpdateStockSuccess value)?  updateStockSuccess,TResult? Function( DeleteCartSuccess value)?  deleteCartSuccess,TResult? Function( ErrorSubmitCart value)?  errorSubmitCart,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitCart() when loadingSubmitCart != null:
return loadingSubmitCart(_that);case UpdateStockSuccess() when updateStockSuccess != null:
return updateStockSuccess(_that);case DeleteCartSuccess() when deleteCartSuccess != null:
return deleteCartSuccess(_that);case ErrorSubmitCart() when errorSubmitCart != null:
return errorSubmitCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSubmitCart,TResult Function( UpdateCartResponseModel update)?  updateStockSuccess,TResult Function( String message)?  deleteCartSuccess,TResult Function( String message)?  errorSubmitCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitCart() when loadingSubmitCart != null:
return loadingSubmitCart();case UpdateStockSuccess() when updateStockSuccess != null:
return updateStockSuccess(_that.update);case DeleteCartSuccess() when deleteCartSuccess != null:
return deleteCartSuccess(_that.message);case ErrorSubmitCart() when errorSubmitCart != null:
return errorSubmitCart(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSubmitCart,required TResult Function( UpdateCartResponseModel update)  updateStockSuccess,required TResult Function( String message)  deleteCartSuccess,required TResult Function( String message)  errorSubmitCart,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingSubmitCart():
return loadingSubmitCart();case UpdateStockSuccess():
return updateStockSuccess(_that.update);case DeleteCartSuccess():
return deleteCartSuccess(_that.message);case ErrorSubmitCart():
return errorSubmitCart(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSubmitCart,TResult? Function( UpdateCartResponseModel update)?  updateStockSuccess,TResult? Function( String message)?  deleteCartSuccess,TResult? Function( String message)?  errorSubmitCart,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitCart() when loadingSubmitCart != null:
return loadingSubmitCart();case UpdateStockSuccess() when updateStockSuccess != null:
return updateStockSuccess(_that.update);case DeleteCartSuccess() when deleteCartSuccess != null:
return deleteCartSuccess(_that.message);case ErrorSubmitCart() when errorSubmitCart != null:
return errorSubmitCart(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SubmitCartState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCartState.initial()';
}


}




/// @nodoc


class LoadingSubmitCart implements SubmitCartState {
  const LoadingSubmitCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSubmitCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCartState.loadingSubmitCart()';
}


}




/// @nodoc


class UpdateStockSuccess implements SubmitCartState {
  const UpdateStockSuccess(this.update);
  

 final  UpdateCartResponseModel update;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStockSuccessCopyWith<UpdateStockSuccess> get copyWith => _$UpdateStockSuccessCopyWithImpl<UpdateStockSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStockSuccess&&(identical(other.update, update) || other.update == update));
}


@override
int get hashCode => Object.hash(runtimeType,update);

@override
String toString() {
  return 'SubmitCartState.updateStockSuccess(update: $update)';
}


}

/// @nodoc
abstract mixin class $UpdateStockSuccessCopyWith<$Res> implements $SubmitCartStateCopyWith<$Res> {
  factory $UpdateStockSuccessCopyWith(UpdateStockSuccess value, $Res Function(UpdateStockSuccess) _then) = _$UpdateStockSuccessCopyWithImpl;
@useResult
$Res call({
 UpdateCartResponseModel update
});




}
/// @nodoc
class _$UpdateStockSuccessCopyWithImpl<$Res>
    implements $UpdateStockSuccessCopyWith<$Res> {
  _$UpdateStockSuccessCopyWithImpl(this._self, this._then);

  final UpdateStockSuccess _self;
  final $Res Function(UpdateStockSuccess) _then;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? update = null,}) {
  return _then(UpdateStockSuccess(
null == update ? _self.update : update // ignore: cast_nullable_to_non_nullable
as UpdateCartResponseModel,
  ));
}


}

/// @nodoc


class DeleteCartSuccess implements SubmitCartState {
  const DeleteCartSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCartSuccessCopyWith<DeleteCartSuccess> get copyWith => _$DeleteCartSuccessCopyWithImpl<DeleteCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCartSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitCartState.deleteCartSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteCartSuccessCopyWith<$Res> implements $SubmitCartStateCopyWith<$Res> {
  factory $DeleteCartSuccessCopyWith(DeleteCartSuccess value, $Res Function(DeleteCartSuccess) _then) = _$DeleteCartSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DeleteCartSuccessCopyWithImpl<$Res>
    implements $DeleteCartSuccessCopyWith<$Res> {
  _$DeleteCartSuccessCopyWithImpl(this._self, this._then);

  final DeleteCartSuccess _self;
  final $Res Function(DeleteCartSuccess) _then;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DeleteCartSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ErrorSubmitCart implements SubmitCartState {
  const ErrorSubmitCart(this.message);
  

 final  String message;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSubmitCartCopyWith<ErrorSubmitCart> get copyWith => _$ErrorSubmitCartCopyWithImpl<ErrorSubmitCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSubmitCart&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitCartState.errorSubmitCart(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorSubmitCartCopyWith<$Res> implements $SubmitCartStateCopyWith<$Res> {
  factory $ErrorSubmitCartCopyWith(ErrorSubmitCart value, $Res Function(ErrorSubmitCart) _then) = _$ErrorSubmitCartCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorSubmitCartCopyWithImpl<$Res>
    implements $ErrorSubmitCartCopyWith<$Res> {
  _$ErrorSubmitCartCopyWithImpl(this._self, this._then);

  final ErrorSubmitCart _self;
  final $Res Function(ErrorSubmitCart) _then;

/// Create a copy of SubmitCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorSubmitCart(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
