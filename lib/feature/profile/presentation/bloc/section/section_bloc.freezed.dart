// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionEvent()';
}


}

/// @nodoc
class $SectionEventCopyWith<$Res>  {
$SectionEventCopyWith(SectionEvent _, $Res Function(SectionEvent) __);
}


/// Adds pattern-matching-related methods to [SectionEvent].
extension SectionEventPatterns on SectionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _ShippingAddress value)?  shippingAddress,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ShippingAddress() when shippingAddress != null:
return shippingAddress(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _ShippingAddress value)  shippingAddress,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _ShippingAddress():
return shippingAddress(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _ShippingAddress value)?  shippingAddress,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _ShippingAddress() when shippingAddress != null:
return shippingAddress(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  shippingAddress,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ShippingAddress() when shippingAddress != null:
return shippingAddress();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  shippingAddress,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _ShippingAddress():
return shippingAddress();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  shippingAddress,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _ShippingAddress() when shippingAddress != null:
return shippingAddress();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SectionEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionEvent.started()';
}


}




/// @nodoc


class _ShippingAddress implements SectionEvent {
  const _ShippingAddress();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShippingAddress);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionEvent.shippingAddress()';
}


}




/// @nodoc
mixin _$SectionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionState()';
}


}

/// @nodoc
class $SectionStateCopyWith<$Res>  {
$SectionStateCopyWith(SectionState _, $Res Function(SectionState) __);
}


/// Adds pattern-matching-related methods to [SectionState].
extension SectionStatePatterns on SectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingSection value)?  loadingSection,TResult Function( ShippingAddressSuccess value)?  shippingAddressSuccess,TResult Function( ErrorSection value)?  errorSection,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSection() when loadingSection != null:
return loadingSection(_that);case ShippingAddressSuccess() when shippingAddressSuccess != null:
return shippingAddressSuccess(_that);case ErrorSection() when errorSection != null:
return errorSection(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingSection value)  loadingSection,required TResult Function( ShippingAddressSuccess value)  shippingAddressSuccess,required TResult Function( ErrorSection value)  errorSection,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingSection():
return loadingSection(_that);case ShippingAddressSuccess():
return shippingAddressSuccess(_that);case ErrorSection():
return errorSection(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingSection value)?  loadingSection,TResult? Function( ShippingAddressSuccess value)?  shippingAddressSuccess,TResult? Function( ErrorSection value)?  errorSection,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSection() when loadingSection != null:
return loadingSection(_that);case ShippingAddressSuccess() when shippingAddressSuccess != null:
return shippingAddressSuccess(_that);case ErrorSection() when errorSection != null:
return errorSection(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSection,TResult Function( ShippingAddressResponseModel address)?  shippingAddressSuccess,TResult Function( String message)?  errorSection,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSection() when loadingSection != null:
return loadingSection();case ShippingAddressSuccess() when shippingAddressSuccess != null:
return shippingAddressSuccess(_that.address);case ErrorSection() when errorSection != null:
return errorSection(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSection,required TResult Function( ShippingAddressResponseModel address)  shippingAddressSuccess,required TResult Function( String message)  errorSection,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingSection():
return loadingSection();case ShippingAddressSuccess():
return shippingAddressSuccess(_that.address);case ErrorSection():
return errorSection(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSection,TResult? Function( ShippingAddressResponseModel address)?  shippingAddressSuccess,TResult? Function( String message)?  errorSection,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSection() when loadingSection != null:
return loadingSection();case ShippingAddressSuccess() when shippingAddressSuccess != null:
return shippingAddressSuccess(_that.address);case ErrorSection() when errorSection != null:
return errorSection(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SectionState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionState.initial()';
}


}




/// @nodoc


class LoadingSection implements SectionState {
  const LoadingSection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionState.loadingSection()';
}


}




/// @nodoc


class ShippingAddressSuccess implements SectionState {
  const ShippingAddressSuccess(this.address);
  

 final  ShippingAddressResponseModel address;

/// Create a copy of SectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShippingAddressSuccessCopyWith<ShippingAddressSuccess> get copyWith => _$ShippingAddressSuccessCopyWithImpl<ShippingAddressSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShippingAddressSuccess&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'SectionState.shippingAddressSuccess(address: $address)';
}


}

/// @nodoc
abstract mixin class $ShippingAddressSuccessCopyWith<$Res> implements $SectionStateCopyWith<$Res> {
  factory $ShippingAddressSuccessCopyWith(ShippingAddressSuccess value, $Res Function(ShippingAddressSuccess) _then) = _$ShippingAddressSuccessCopyWithImpl;
@useResult
$Res call({
 ShippingAddressResponseModel address
});




}
/// @nodoc
class _$ShippingAddressSuccessCopyWithImpl<$Res>
    implements $ShippingAddressSuccessCopyWith<$Res> {
  _$ShippingAddressSuccessCopyWithImpl(this._self, this._then);

  final ShippingAddressSuccess _self;
  final $Res Function(ShippingAddressSuccess) _then;

/// Create a copy of SectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(ShippingAddressSuccess(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ShippingAddressResponseModel,
  ));
}


}

/// @nodoc


class ErrorSection implements SectionState {
  const ErrorSection(this.message);
  

 final  String message;

/// Create a copy of SectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSectionCopyWith<ErrorSection> get copyWith => _$ErrorSectionCopyWithImpl<ErrorSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSection&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SectionState.errorSection(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorSectionCopyWith<$Res> implements $SectionStateCopyWith<$Res> {
  factory $ErrorSectionCopyWith(ErrorSection value, $Res Function(ErrorSection) _then) = _$ErrorSectionCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorSectionCopyWithImpl<$Res>
    implements $ErrorSectionCopyWith<$Res> {
  _$ErrorSectionCopyWithImpl(this._self, this._then);

  final ErrorSection _self;
  final $Res Function(ErrorSection) _then;

/// Create a copy of SectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorSection(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
