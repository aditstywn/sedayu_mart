// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailProductEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailProductEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailProductEvent()';
}


}

/// @nodoc
class $DetailProductEventCopyWith<$Res>  {
$DetailProductEventCopyWith(DetailProductEvent _, $Res Function(DetailProductEvent) __);
}


/// Adds pattern-matching-related methods to [DetailProductEvent].
extension DetailProductEventPatterns on DetailProductEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _DetailProduct value)?  detailProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DetailProduct() when detailProduct != null:
return detailProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _DetailProduct value)  detailProduct,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _DetailProduct():
return detailProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _DetailProduct value)?  detailProduct,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _DetailProduct() when detailProduct != null:
return detailProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int id)?  detailProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DetailProduct() when detailProduct != null:
return detailProduct(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int id)  detailProduct,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _DetailProduct():
return detailProduct(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int id)?  detailProduct,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _DetailProduct() when detailProduct != null:
return detailProduct(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements DetailProductEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailProductEvent.started()';
}


}




/// @nodoc


class _DetailProduct implements DetailProductEvent {
  const _DetailProduct(this.id);
  

 final  int id;

/// Create a copy of DetailProductEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailProductCopyWith<_DetailProduct> get copyWith => __$DetailProductCopyWithImpl<_DetailProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailProduct&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DetailProductEvent.detailProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DetailProductCopyWith<$Res> implements $DetailProductEventCopyWith<$Res> {
  factory _$DetailProductCopyWith(_DetailProduct value, $Res Function(_DetailProduct) _then) = __$DetailProductCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DetailProductCopyWithImpl<$Res>
    implements _$DetailProductCopyWith<$Res> {
  __$DetailProductCopyWithImpl(this._self, this._then);

  final _DetailProduct _self;
  final $Res Function(_DetailProduct) _then;

/// Create a copy of DetailProductEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DetailProduct(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$DetailProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailProductState()';
}


}

/// @nodoc
class $DetailProductStateCopyWith<$Res>  {
$DetailProductStateCopyWith(DetailProductState _, $Res Function(DetailProductState) __);
}


/// Adds pattern-matching-related methods to [DetailProductState].
extension DetailProductStatePatterns on DetailProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingDetailProduct value)?  loadingDetailProduct,TResult Function( DetailProductSuccess value)?  detailProductSuccess,TResult Function( ErrorDetailProduct value)?  errorDetailProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingDetailProduct() when loadingDetailProduct != null:
return loadingDetailProduct(_that);case DetailProductSuccess() when detailProductSuccess != null:
return detailProductSuccess(_that);case ErrorDetailProduct() when errorDetailProduct != null:
return errorDetailProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingDetailProduct value)  loadingDetailProduct,required TResult Function( DetailProductSuccess value)  detailProductSuccess,required TResult Function( ErrorDetailProduct value)  errorDetailProduct,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingDetailProduct():
return loadingDetailProduct(_that);case DetailProductSuccess():
return detailProductSuccess(_that);case ErrorDetailProduct():
return errorDetailProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingDetailProduct value)?  loadingDetailProduct,TResult? Function( DetailProductSuccess value)?  detailProductSuccess,TResult? Function( ErrorDetailProduct value)?  errorDetailProduct,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingDetailProduct() when loadingDetailProduct != null:
return loadingDetailProduct(_that);case DetailProductSuccess() when detailProductSuccess != null:
return detailProductSuccess(_that);case ErrorDetailProduct() when errorDetailProduct != null:
return errorDetailProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingDetailProduct,TResult Function( DetailProductResponseModel detailProduct)?  detailProductSuccess,TResult Function( String message)?  errorDetailProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingDetailProduct() when loadingDetailProduct != null:
return loadingDetailProduct();case DetailProductSuccess() when detailProductSuccess != null:
return detailProductSuccess(_that.detailProduct);case ErrorDetailProduct() when errorDetailProduct != null:
return errorDetailProduct(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingDetailProduct,required TResult Function( DetailProductResponseModel detailProduct)  detailProductSuccess,required TResult Function( String message)  errorDetailProduct,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingDetailProduct():
return loadingDetailProduct();case DetailProductSuccess():
return detailProductSuccess(_that.detailProduct);case ErrorDetailProduct():
return errorDetailProduct(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingDetailProduct,TResult? Function( DetailProductResponseModel detailProduct)?  detailProductSuccess,TResult? Function( String message)?  errorDetailProduct,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingDetailProduct() when loadingDetailProduct != null:
return loadingDetailProduct();case DetailProductSuccess() when detailProductSuccess != null:
return detailProductSuccess(_that.detailProduct);case ErrorDetailProduct() when errorDetailProduct != null:
return errorDetailProduct(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements DetailProductState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailProductState.initial()';
}


}




/// @nodoc


class LoadingDetailProduct implements DetailProductState {
  const LoadingDetailProduct();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingDetailProduct);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailProductState.loadingDetailProduct()';
}


}




/// @nodoc


class DetailProductSuccess implements DetailProductState {
  const DetailProductSuccess(this.detailProduct);
  

 final  DetailProductResponseModel detailProduct;

/// Create a copy of DetailProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailProductSuccessCopyWith<DetailProductSuccess> get copyWith => _$DetailProductSuccessCopyWithImpl<DetailProductSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailProductSuccess&&(identical(other.detailProduct, detailProduct) || other.detailProduct == detailProduct));
}


@override
int get hashCode => Object.hash(runtimeType,detailProduct);

@override
String toString() {
  return 'DetailProductState.detailProductSuccess(detailProduct: $detailProduct)';
}


}

/// @nodoc
abstract mixin class $DetailProductSuccessCopyWith<$Res> implements $DetailProductStateCopyWith<$Res> {
  factory $DetailProductSuccessCopyWith(DetailProductSuccess value, $Res Function(DetailProductSuccess) _then) = _$DetailProductSuccessCopyWithImpl;
@useResult
$Res call({
 DetailProductResponseModel detailProduct
});




}
/// @nodoc
class _$DetailProductSuccessCopyWithImpl<$Res>
    implements $DetailProductSuccessCopyWith<$Res> {
  _$DetailProductSuccessCopyWithImpl(this._self, this._then);

  final DetailProductSuccess _self;
  final $Res Function(DetailProductSuccess) _then;

/// Create a copy of DetailProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? detailProduct = null,}) {
  return _then(DetailProductSuccess(
null == detailProduct ? _self.detailProduct : detailProduct // ignore: cast_nullable_to_non_nullable
as DetailProductResponseModel,
  ));
}


}

/// @nodoc


class ErrorDetailProduct implements DetailProductState {
  const ErrorDetailProduct(this.message);
  

 final  String message;

/// Create a copy of DetailProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDetailProductCopyWith<ErrorDetailProduct> get copyWith => _$ErrorDetailProductCopyWithImpl<ErrorDetailProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDetailProduct&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DetailProductState.errorDetailProduct(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorDetailProductCopyWith<$Res> implements $DetailProductStateCopyWith<$Res> {
  factory $ErrorDetailProductCopyWith(ErrorDetailProduct value, $Res Function(ErrorDetailProduct) _then) = _$ErrorDetailProductCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorDetailProductCopyWithImpl<$Res>
    implements $ErrorDetailProductCopyWith<$Res> {
  _$ErrorDetailProductCopyWithImpl(this._self, this._then);

  final ErrorDetailProduct _self;
  final $Res Function(ErrorDetailProduct) _then;

/// Create a copy of DetailProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorDetailProduct(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
