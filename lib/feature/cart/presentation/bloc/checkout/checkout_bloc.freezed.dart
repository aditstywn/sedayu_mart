// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent()';
}


}

/// @nodoc
class $CheckoutEventCopyWith<$Res>  {
$CheckoutEventCopyWith(CheckoutEvent _, $Res Function(CheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckoutEvent].
extension CheckoutEventPatterns on CheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Checkout value)?  checkout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Checkout() when checkout != null:
return checkout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Checkout value)  checkout,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Checkout():
return checkout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Checkout value)?  checkout,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Checkout() when checkout != null:
return checkout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  checkout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Checkout() when checkout != null:
return checkout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  checkout,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Checkout():
return checkout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  checkout,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Checkout() when checkout != null:
return checkout();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements CheckoutEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.started()';
}


}




/// @nodoc


class _Checkout implements CheckoutEvent {
  const _Checkout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checkout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.checkout()';
}


}




/// @nodoc
mixin _$CheckoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutState()';
}


}

/// @nodoc
class $CheckoutStateCopyWith<$Res>  {
$CheckoutStateCopyWith(CheckoutState _, $Res Function(CheckoutState) __);
}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingCheckout value)?  loadingCheckout,TResult Function( CheckoutSuccess value)?  checkoutSuccess,TResult Function( ErrorCheckout value)?  errorCheckout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCheckout() when loadingCheckout != null:
return loadingCheckout(_that);case CheckoutSuccess() when checkoutSuccess != null:
return checkoutSuccess(_that);case ErrorCheckout() when errorCheckout != null:
return errorCheckout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingCheckout value)  loadingCheckout,required TResult Function( CheckoutSuccess value)  checkoutSuccess,required TResult Function( ErrorCheckout value)  errorCheckout,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingCheckout():
return loadingCheckout(_that);case CheckoutSuccess():
return checkoutSuccess(_that);case ErrorCheckout():
return errorCheckout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingCheckout value)?  loadingCheckout,TResult? Function( CheckoutSuccess value)?  checkoutSuccess,TResult? Function( ErrorCheckout value)?  errorCheckout,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingCheckout() when loadingCheckout != null:
return loadingCheckout(_that);case CheckoutSuccess() when checkoutSuccess != null:
return checkoutSuccess(_that);case ErrorCheckout() when errorCheckout != null:
return errorCheckout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingCheckout,TResult Function( MainAddressResponseModel address,  RekeningListResponseModel rekening)?  checkoutSuccess,TResult Function( String message)?  errorCheckout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCheckout() when loadingCheckout != null:
return loadingCheckout();case CheckoutSuccess() when checkoutSuccess != null:
return checkoutSuccess(_that.address,_that.rekening);case ErrorCheckout() when errorCheckout != null:
return errorCheckout(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingCheckout,required TResult Function( MainAddressResponseModel address,  RekeningListResponseModel rekening)  checkoutSuccess,required TResult Function( String message)  errorCheckout,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingCheckout():
return loadingCheckout();case CheckoutSuccess():
return checkoutSuccess(_that.address,_that.rekening);case ErrorCheckout():
return errorCheckout(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingCheckout,TResult? Function( MainAddressResponseModel address,  RekeningListResponseModel rekening)?  checkoutSuccess,TResult? Function( String message)?  errorCheckout,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingCheckout() when loadingCheckout != null:
return loadingCheckout();case CheckoutSuccess() when checkoutSuccess != null:
return checkoutSuccess(_that.address,_that.rekening);case ErrorCheckout() when errorCheckout != null:
return errorCheckout(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements CheckoutState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutState.initial()';
}


}




/// @nodoc


class LoadingCheckout implements CheckoutState {
  const LoadingCheckout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingCheckout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutState.loadingCheckout()';
}


}




/// @nodoc


class CheckoutSuccess implements CheckoutState {
  const CheckoutSuccess(this.address, this.rekening);
  

 final  MainAddressResponseModel address;
 final  RekeningListResponseModel rekening;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSuccessCopyWith<CheckoutSuccess> get copyWith => _$CheckoutSuccessCopyWithImpl<CheckoutSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSuccess&&(identical(other.address, address) || other.address == address)&&(identical(other.rekening, rekening) || other.rekening == rekening));
}


@override
int get hashCode => Object.hash(runtimeType,address,rekening);

@override
String toString() {
  return 'CheckoutState.checkoutSuccess(address: $address, rekening: $rekening)';
}


}

/// @nodoc
abstract mixin class $CheckoutSuccessCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory $CheckoutSuccessCopyWith(CheckoutSuccess value, $Res Function(CheckoutSuccess) _then) = _$CheckoutSuccessCopyWithImpl;
@useResult
$Res call({
 MainAddressResponseModel address, RekeningListResponseModel rekening
});




}
/// @nodoc
class _$CheckoutSuccessCopyWithImpl<$Res>
    implements $CheckoutSuccessCopyWith<$Res> {
  _$CheckoutSuccessCopyWithImpl(this._self, this._then);

  final CheckoutSuccess _self;
  final $Res Function(CheckoutSuccess) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,Object? rekening = null,}) {
  return _then(CheckoutSuccess(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as MainAddressResponseModel,null == rekening ? _self.rekening : rekening // ignore: cast_nullable_to_non_nullable
as RekeningListResponseModel,
  ));
}


}

/// @nodoc


class ErrorCheckout implements CheckoutState {
  const ErrorCheckout(this.message);
  

 final  String message;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCheckoutCopyWith<ErrorCheckout> get copyWith => _$ErrorCheckoutCopyWithImpl<ErrorCheckout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorCheckout&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CheckoutState.errorCheckout(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCheckoutCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory $ErrorCheckoutCopyWith(ErrorCheckout value, $Res Function(ErrorCheckout) _then) = _$ErrorCheckoutCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCheckoutCopyWithImpl<$Res>
    implements $ErrorCheckoutCopyWith<$Res> {
  _$ErrorCheckoutCopyWithImpl(this._self, this._then);

  final ErrorCheckout _self;
  final $Res Function(ErrorCheckout) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorCheckout(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
