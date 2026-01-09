// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProductEvent()';
}


}

/// @nodoc
class $SubmitProductEventCopyWith<$Res>  {
$SubmitProductEventCopyWith(SubmitProductEvent _, $Res Function(SubmitProductEvent) __);
}


/// Adds pattern-matching-related methods to [SubmitProductEvent].
extension SubmitProductEventPatterns on SubmitProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AddCart value)?  addCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddCart() when addCart != null:
return addCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AddCart value)  addCart,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AddCart():
return addCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AddCart value)?  addCart,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddCart() when addCart != null:
return addCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( AddCartRequestModel cart)?  addCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddCart() when addCart != null:
return addCart(_that.cart);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( AddCartRequestModel cart)  addCart,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AddCart():
return addCart(_that.cart);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( AddCartRequestModel cart)?  addCart,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddCart() when addCart != null:
return addCart(_that.cart);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SubmitProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProductEvent.started()';
}


}




/// @nodoc


class _AddCart implements SubmitProductEvent {
  const _AddCart(this.cart);
  

 final  AddCartRequestModel cart;

/// Create a copy of SubmitProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCartCopyWith<_AddCart> get copyWith => __$AddCartCopyWithImpl<_AddCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCart&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'SubmitProductEvent.addCart(cart: $cart)';
}


}

/// @nodoc
abstract mixin class _$AddCartCopyWith<$Res> implements $SubmitProductEventCopyWith<$Res> {
  factory _$AddCartCopyWith(_AddCart value, $Res Function(_AddCart) _then) = __$AddCartCopyWithImpl;
@useResult
$Res call({
 AddCartRequestModel cart
});




}
/// @nodoc
class __$AddCartCopyWithImpl<$Res>
    implements _$AddCartCopyWith<$Res> {
  __$AddCartCopyWithImpl(this._self, this._then);

  final _AddCart _self;
  final $Res Function(_AddCart) _then;

/// Create a copy of SubmitProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(_AddCart(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as AddCartRequestModel,
  ));
}


}

/// @nodoc
mixin _$SubmitProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProductState()';
}


}

/// @nodoc
class $SubmitProductStateCopyWith<$Res>  {
$SubmitProductStateCopyWith(SubmitProductState _, $Res Function(SubmitProductState) __);
}


/// Adds pattern-matching-related methods to [SubmitProductState].
extension SubmitProductStatePatterns on SubmitProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingSubmitProduct value)?  loadingSubmitProduct,TResult Function( AddCartSuccess value)?  addCartSuccess,TResult Function( ErrorSubmitProduct value)?  errorSubmitProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitProduct() when loadingSubmitProduct != null:
return loadingSubmitProduct(_that);case AddCartSuccess() when addCartSuccess != null:
return addCartSuccess(_that);case ErrorSubmitProduct() when errorSubmitProduct != null:
return errorSubmitProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingSubmitProduct value)  loadingSubmitProduct,required TResult Function( AddCartSuccess value)  addCartSuccess,required TResult Function( ErrorSubmitProduct value)  errorSubmitProduct,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingSubmitProduct():
return loadingSubmitProduct(_that);case AddCartSuccess():
return addCartSuccess(_that);case ErrorSubmitProduct():
return errorSubmitProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingSubmitProduct value)?  loadingSubmitProduct,TResult? Function( AddCartSuccess value)?  addCartSuccess,TResult? Function( ErrorSubmitProduct value)?  errorSubmitProduct,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitProduct() when loadingSubmitProduct != null:
return loadingSubmitProduct(_that);case AddCartSuccess() when addCartSuccess != null:
return addCartSuccess(_that);case ErrorSubmitProduct() when errorSubmitProduct != null:
return errorSubmitProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSubmitProduct,TResult Function( String message)?  addCartSuccess,TResult Function( String message)?  errorSubmitProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitProduct() when loadingSubmitProduct != null:
return loadingSubmitProduct();case AddCartSuccess() when addCartSuccess != null:
return addCartSuccess(_that.message);case ErrorSubmitProduct() when errorSubmitProduct != null:
return errorSubmitProduct(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSubmitProduct,required TResult Function( String message)  addCartSuccess,required TResult Function( String message)  errorSubmitProduct,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingSubmitProduct():
return loadingSubmitProduct();case AddCartSuccess():
return addCartSuccess(_that.message);case ErrorSubmitProduct():
return errorSubmitProduct(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSubmitProduct,TResult? Function( String message)?  addCartSuccess,TResult? Function( String message)?  errorSubmitProduct,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitProduct() when loadingSubmitProduct != null:
return loadingSubmitProduct();case AddCartSuccess() when addCartSuccess != null:
return addCartSuccess(_that.message);case ErrorSubmitProduct() when errorSubmitProduct != null:
return errorSubmitProduct(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SubmitProductState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProductState.initial()';
}


}




/// @nodoc


class LoadingSubmitProduct implements SubmitProductState {
  const LoadingSubmitProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSubmitProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProductState.loadingSubmitProduct()';
}


}




/// @nodoc


class AddCartSuccess implements SubmitProductState {
  const AddCartSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCartSuccessCopyWith<AddCartSuccess> get copyWith => _$AddCartSuccessCopyWithImpl<AddCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCartSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProductState.addCartSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddCartSuccessCopyWith<$Res> implements $SubmitProductStateCopyWith<$Res> {
  factory $AddCartSuccessCopyWith(AddCartSuccess value, $Res Function(AddCartSuccess) _then) = _$AddCartSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddCartSuccessCopyWithImpl<$Res>
    implements $AddCartSuccessCopyWith<$Res> {
  _$AddCartSuccessCopyWithImpl(this._self, this._then);

  final AddCartSuccess _self;
  final $Res Function(AddCartSuccess) _then;

/// Create a copy of SubmitProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddCartSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ErrorSubmitProduct implements SubmitProductState {
  const ErrorSubmitProduct(this.message);
  

 final  String message;

/// Create a copy of SubmitProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSubmitProductCopyWith<ErrorSubmitProduct> get copyWith => _$ErrorSubmitProductCopyWithImpl<ErrorSubmitProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSubmitProduct&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProductState.errorSubmitProduct(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorSubmitProductCopyWith<$Res> implements $SubmitProductStateCopyWith<$Res> {
  factory $ErrorSubmitProductCopyWith(ErrorSubmitProduct value, $Res Function(ErrorSubmitProduct) _then) = _$ErrorSubmitProductCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorSubmitProductCopyWithImpl<$Res>
    implements $ErrorSubmitProductCopyWith<$Res> {
  _$ErrorSubmitProductCopyWithImpl(this._self, this._then);

  final ErrorSubmitProduct _self;
  final $Res Function(ErrorSubmitProduct) _then;

/// Create a copy of SubmitProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorSubmitProduct(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
