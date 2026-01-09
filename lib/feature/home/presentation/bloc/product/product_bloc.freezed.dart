// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent()';
}


}

/// @nodoc
class $ProductEventCopyWith<$Res>  {
$ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}


/// Adds pattern-matching-related methods to [ProductEvent].
extension ProductEventPatterns on ProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetProduct value)?  getProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetProduct() when getProduct != null:
return getProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetProduct value)  getProduct,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetProduct():
return getProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetProduct value)?  getProduct,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetProduct() when getProduct != null:
return getProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetProduct() when getProduct != null:
return getProduct();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getProduct,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetProduct():
return getProduct();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getProduct,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetProduct() when getProduct != null:
return getProduct();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.started()';
}


}




/// @nodoc


class _GetProduct implements ProductEvent {
  const _GetProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductEvent.getProduct()';
}


}




/// @nodoc
mixin _$ProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState()';
}


}

/// @nodoc
class $ProductStateCopyWith<$Res>  {
$ProductStateCopyWith(ProductState _, $Res Function(ProductState) __);
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingProduct value)?  loadingProduct,TResult Function( GetProductSuccess value)?  getProductSuccess,TResult Function( ErrorProduct value)?  errorProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingProduct() when loadingProduct != null:
return loadingProduct(_that);case GetProductSuccess() when getProductSuccess != null:
return getProductSuccess(_that);case ErrorProduct() when errorProduct != null:
return errorProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingProduct value)  loadingProduct,required TResult Function( GetProductSuccess value)  getProductSuccess,required TResult Function( ErrorProduct value)  errorProduct,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingProduct():
return loadingProduct(_that);case GetProductSuccess():
return getProductSuccess(_that);case ErrorProduct():
return errorProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingProduct value)?  loadingProduct,TResult? Function( GetProductSuccess value)?  getProductSuccess,TResult? Function( ErrorProduct value)?  errorProduct,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingProduct() when loadingProduct != null:
return loadingProduct(_that);case GetProductSuccess() when getProductSuccess != null:
return getProductSuccess(_that);case ErrorProduct() when errorProduct != null:
return errorProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingProduct,TResult Function( ProductResponseModel product)?  getProductSuccess,TResult Function( String message)?  errorProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingProduct() when loadingProduct != null:
return loadingProduct();case GetProductSuccess() when getProductSuccess != null:
return getProductSuccess(_that.product);case ErrorProduct() when errorProduct != null:
return errorProduct(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingProduct,required TResult Function( ProductResponseModel product)  getProductSuccess,required TResult Function( String message)  errorProduct,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingProduct():
return loadingProduct();case GetProductSuccess():
return getProductSuccess(_that.product);case ErrorProduct():
return errorProduct(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingProduct,TResult? Function( ProductResponseModel product)?  getProductSuccess,TResult? Function( String message)?  errorProduct,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingProduct() when loadingProduct != null:
return loadingProduct();case GetProductSuccess() when getProductSuccess != null:
return getProductSuccess(_that.product);case ErrorProduct() when errorProduct != null:
return errorProduct(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ProductState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.initial()';
}


}




/// @nodoc


class LoadingProduct implements ProductState {
  const LoadingProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.loadingProduct()';
}


}




/// @nodoc


class GetProductSuccess implements ProductState {
  const GetProductSuccess(this.product);
  

 final  ProductResponseModel product;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductSuccessCopyWith<GetProductSuccess> get copyWith => _$GetProductSuccessCopyWithImpl<GetProductSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductSuccess&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ProductState.getProductSuccess(product: $product)';
}


}

/// @nodoc
abstract mixin class $GetProductSuccessCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $GetProductSuccessCopyWith(GetProductSuccess value, $Res Function(GetProductSuccess) _then) = _$GetProductSuccessCopyWithImpl;
@useResult
$Res call({
 ProductResponseModel product
});




}
/// @nodoc
class _$GetProductSuccessCopyWithImpl<$Res>
    implements $GetProductSuccessCopyWith<$Res> {
  _$GetProductSuccessCopyWithImpl(this._self, this._then);

  final GetProductSuccess _self;
  final $Res Function(GetProductSuccess) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(GetProductSuccess(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductResponseModel,
  ));
}


}

/// @nodoc


class ErrorProduct implements ProductState {
  const ErrorProduct(this.message);
  

 final  String message;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorProductCopyWith<ErrorProduct> get copyWith => _$ErrorProductCopyWithImpl<ErrorProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorProduct&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductState.errorProduct(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorProductCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ErrorProductCopyWith(ErrorProduct value, $Res Function(ErrorProduct) _then) = _$ErrorProductCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorProductCopyWithImpl<$Res>
    implements $ErrorProductCopyWith<$Res> {
  _$ErrorProductCopyWithImpl(this._self, this._then);

  final ErrorProduct _self;
  final $Res Function(ErrorProduct) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorProduct(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
