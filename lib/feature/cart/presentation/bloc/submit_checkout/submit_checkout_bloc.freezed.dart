// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitCheckoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCheckoutEvent()';
}


}

/// @nodoc
class $SubmitCheckoutEventCopyWith<$Res>  {
$SubmitCheckoutEventCopyWith(SubmitCheckoutEvent _, $Res Function(SubmitCheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [SubmitCheckoutEvent].
extension SubmitCheckoutEventPatterns on SubmitCheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _CheckoutDetail value)?  checkoutDetail,TResult Function( _CheckoutCart value)?  checkoutCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CheckoutDetail() when checkoutDetail != null:
return checkoutDetail(_that);case _CheckoutCart() when checkoutCart != null:
return checkoutCart(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _CheckoutDetail value)  checkoutDetail,required TResult Function( _CheckoutCart value)  checkoutCart,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _CheckoutDetail():
return checkoutDetail(_that);case _CheckoutCart():
return checkoutCart(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _CheckoutDetail value)?  checkoutDetail,TResult? Function( _CheckoutCart value)?  checkoutCart,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _CheckoutDetail() when checkoutDetail != null:
return checkoutDetail(_that);case _CheckoutCart() when checkoutCart != null:
return checkoutCart(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( CheckoutRequestModel checkout)?  checkoutDetail,TResult Function( CheckoutCartRequestModel checkout)?  checkoutCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CheckoutDetail() when checkoutDetail != null:
return checkoutDetail(_that.checkout);case _CheckoutCart() when checkoutCart != null:
return checkoutCart(_that.checkout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( CheckoutRequestModel checkout)  checkoutDetail,required TResult Function( CheckoutCartRequestModel checkout)  checkoutCart,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _CheckoutDetail():
return checkoutDetail(_that.checkout);case _CheckoutCart():
return checkoutCart(_that.checkout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( CheckoutRequestModel checkout)?  checkoutDetail,TResult? Function( CheckoutCartRequestModel checkout)?  checkoutCart,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _CheckoutDetail() when checkoutDetail != null:
return checkoutDetail(_that.checkout);case _CheckoutCart() when checkoutCart != null:
return checkoutCart(_that.checkout);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SubmitCheckoutEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCheckoutEvent.started()';
}


}




/// @nodoc


class _CheckoutDetail implements SubmitCheckoutEvent {
  const _CheckoutDetail(this.checkout);
  

 final  CheckoutRequestModel checkout;

/// Create a copy of SubmitCheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutDetailCopyWith<_CheckoutDetail> get copyWith => __$CheckoutDetailCopyWithImpl<_CheckoutDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutDetail&&(identical(other.checkout, checkout) || other.checkout == checkout));
}


@override
int get hashCode => Object.hash(runtimeType,checkout);

@override
String toString() {
  return 'SubmitCheckoutEvent.checkoutDetail(checkout: $checkout)';
}


}

/// @nodoc
abstract mixin class _$CheckoutDetailCopyWith<$Res> implements $SubmitCheckoutEventCopyWith<$Res> {
  factory _$CheckoutDetailCopyWith(_CheckoutDetail value, $Res Function(_CheckoutDetail) _then) = __$CheckoutDetailCopyWithImpl;
@useResult
$Res call({
 CheckoutRequestModel checkout
});




}
/// @nodoc
class __$CheckoutDetailCopyWithImpl<$Res>
    implements _$CheckoutDetailCopyWith<$Res> {
  __$CheckoutDetailCopyWithImpl(this._self, this._then);

  final _CheckoutDetail _self;
  final $Res Function(_CheckoutDetail) _then;

/// Create a copy of SubmitCheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? checkout = null,}) {
  return _then(_CheckoutDetail(
null == checkout ? _self.checkout : checkout // ignore: cast_nullable_to_non_nullable
as CheckoutRequestModel,
  ));
}


}

/// @nodoc


class _CheckoutCart implements SubmitCheckoutEvent {
  const _CheckoutCart(this.checkout);
  

 final  CheckoutCartRequestModel checkout;

/// Create a copy of SubmitCheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutCartCopyWith<_CheckoutCart> get copyWith => __$CheckoutCartCopyWithImpl<_CheckoutCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutCart&&(identical(other.checkout, checkout) || other.checkout == checkout));
}


@override
int get hashCode => Object.hash(runtimeType,checkout);

@override
String toString() {
  return 'SubmitCheckoutEvent.checkoutCart(checkout: $checkout)';
}


}

/// @nodoc
abstract mixin class _$CheckoutCartCopyWith<$Res> implements $SubmitCheckoutEventCopyWith<$Res> {
  factory _$CheckoutCartCopyWith(_CheckoutCart value, $Res Function(_CheckoutCart) _then) = __$CheckoutCartCopyWithImpl;
@useResult
$Res call({
 CheckoutCartRequestModel checkout
});




}
/// @nodoc
class __$CheckoutCartCopyWithImpl<$Res>
    implements _$CheckoutCartCopyWith<$Res> {
  __$CheckoutCartCopyWithImpl(this._self, this._then);

  final _CheckoutCart _self;
  final $Res Function(_CheckoutCart) _then;

/// Create a copy of SubmitCheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? checkout = null,}) {
  return _then(_CheckoutCart(
null == checkout ? _self.checkout : checkout // ignore: cast_nullable_to_non_nullable
as CheckoutCartRequestModel,
  ));
}


}

/// @nodoc
mixin _$SubmitCheckoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCheckoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCheckoutState()';
}


}

/// @nodoc
class $SubmitCheckoutStateCopyWith<$Res>  {
$SubmitCheckoutStateCopyWith(SubmitCheckoutState _, $Res Function(SubmitCheckoutState) __);
}


/// Adds pattern-matching-related methods to [SubmitCheckoutState].
extension SubmitCheckoutStatePatterns on SubmitCheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingSubmitCheckout value)?  loadingSubmitCheckout,TResult Function( CheckoutSubmitSuccess value)?  checkoutSubmitSuccess,TResult Function( ErrorSubmitCheckout value)?  errorSubmitCheckout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitCheckout() when loadingSubmitCheckout != null:
return loadingSubmitCheckout(_that);case CheckoutSubmitSuccess() when checkoutSubmitSuccess != null:
return checkoutSubmitSuccess(_that);case ErrorSubmitCheckout() when errorSubmitCheckout != null:
return errorSubmitCheckout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingSubmitCheckout value)  loadingSubmitCheckout,required TResult Function( CheckoutSubmitSuccess value)  checkoutSubmitSuccess,required TResult Function( ErrorSubmitCheckout value)  errorSubmitCheckout,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingSubmitCheckout():
return loadingSubmitCheckout(_that);case CheckoutSubmitSuccess():
return checkoutSubmitSuccess(_that);case ErrorSubmitCheckout():
return errorSubmitCheckout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingSubmitCheckout value)?  loadingSubmitCheckout,TResult? Function( CheckoutSubmitSuccess value)?  checkoutSubmitSuccess,TResult? Function( ErrorSubmitCheckout value)?  errorSubmitCheckout,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitCheckout() when loadingSubmitCheckout != null:
return loadingSubmitCheckout(_that);case CheckoutSubmitSuccess() when checkoutSubmitSuccess != null:
return checkoutSubmitSuccess(_that);case ErrorSubmitCheckout() when errorSubmitCheckout != null:
return errorSubmitCheckout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSubmitCheckout,TResult Function( SuccessResponseModel response)?  checkoutSubmitSuccess,TResult Function( String message)?  errorSubmitCheckout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitCheckout() when loadingSubmitCheckout != null:
return loadingSubmitCheckout();case CheckoutSubmitSuccess() when checkoutSubmitSuccess != null:
return checkoutSubmitSuccess(_that.response);case ErrorSubmitCheckout() when errorSubmitCheckout != null:
return errorSubmitCheckout(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSubmitCheckout,required TResult Function( SuccessResponseModel response)  checkoutSubmitSuccess,required TResult Function( String message)  errorSubmitCheckout,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingSubmitCheckout():
return loadingSubmitCheckout();case CheckoutSubmitSuccess():
return checkoutSubmitSuccess(_that.response);case ErrorSubmitCheckout():
return errorSubmitCheckout(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSubmitCheckout,TResult? Function( SuccessResponseModel response)?  checkoutSubmitSuccess,TResult? Function( String message)?  errorSubmitCheckout,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitCheckout() when loadingSubmitCheckout != null:
return loadingSubmitCheckout();case CheckoutSubmitSuccess() when checkoutSubmitSuccess != null:
return checkoutSubmitSuccess(_that.response);case ErrorSubmitCheckout() when errorSubmitCheckout != null:
return errorSubmitCheckout(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SubmitCheckoutState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCheckoutState.initial()';
}


}




/// @nodoc


class LoadingSubmitCheckout implements SubmitCheckoutState {
  const LoadingSubmitCheckout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSubmitCheckout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitCheckoutState.loadingSubmitCheckout()';
}


}




/// @nodoc


class CheckoutSubmitSuccess implements SubmitCheckoutState {
  const CheckoutSubmitSuccess(this.response);
  

 final  SuccessResponseModel response;

/// Create a copy of SubmitCheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutSubmitSuccessCopyWith<CheckoutSubmitSuccess> get copyWith => _$CheckoutSubmitSuccessCopyWithImpl<CheckoutSubmitSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutSubmitSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SubmitCheckoutState.checkoutSubmitSuccess(response: $response)';
}


}

/// @nodoc
abstract mixin class $CheckoutSubmitSuccessCopyWith<$Res> implements $SubmitCheckoutStateCopyWith<$Res> {
  factory $CheckoutSubmitSuccessCopyWith(CheckoutSubmitSuccess value, $Res Function(CheckoutSubmitSuccess) _then) = _$CheckoutSubmitSuccessCopyWithImpl;
@useResult
$Res call({
 SuccessResponseModel response
});




}
/// @nodoc
class _$CheckoutSubmitSuccessCopyWithImpl<$Res>
    implements $CheckoutSubmitSuccessCopyWith<$Res> {
  _$CheckoutSubmitSuccessCopyWithImpl(this._self, this._then);

  final CheckoutSubmitSuccess _self;
  final $Res Function(CheckoutSubmitSuccess) _then;

/// Create a copy of SubmitCheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(CheckoutSubmitSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SuccessResponseModel,
  ));
}


}

/// @nodoc


class ErrorSubmitCheckout implements SubmitCheckoutState {
  const ErrorSubmitCheckout(this.message);
  

 final  String message;

/// Create a copy of SubmitCheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSubmitCheckoutCopyWith<ErrorSubmitCheckout> get copyWith => _$ErrorSubmitCheckoutCopyWithImpl<ErrorSubmitCheckout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSubmitCheckout&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitCheckoutState.errorSubmitCheckout(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorSubmitCheckoutCopyWith<$Res> implements $SubmitCheckoutStateCopyWith<$Res> {
  factory $ErrorSubmitCheckoutCopyWith(ErrorSubmitCheckout value, $Res Function(ErrorSubmitCheckout) _then) = _$ErrorSubmitCheckoutCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorSubmitCheckoutCopyWithImpl<$Res>
    implements $ErrorSubmitCheckoutCopyWith<$Res> {
  _$ErrorSubmitCheckoutCopyWithImpl(this._self, this._then);

  final ErrorSubmitCheckout _self;
  final $Res Function(ErrorSubmitCheckout) _then;

/// Create a copy of SubmitCheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorSubmitCheckout(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
