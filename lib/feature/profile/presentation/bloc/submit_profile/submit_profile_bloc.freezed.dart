// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProfileEvent()';
}


}

/// @nodoc
class $SubmitProfileEventCopyWith<$Res>  {
$SubmitProfileEventCopyWith(SubmitProfileEvent _, $Res Function(SubmitProfileEvent) __);
}


/// Adds pattern-matching-related methods to [SubmitProfileEvent].
extension SubmitProfileEventPatterns on SubmitProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AddShippingAddress value)?  addShippingAddress,TResult Function( _UpdateShippingAddress value)?  updateShippingAddress,TResult Function( _DeleteShippingAddress value)?  deleteShippingAddress,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _ChangePassword value)?  changePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddShippingAddress() when addShippingAddress != null:
return addShippingAddress(_that);case _UpdateShippingAddress() when updateShippingAddress != null:
return updateShippingAddress(_that);case _DeleteShippingAddress() when deleteShippingAddress != null:
return deleteShippingAddress(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AddShippingAddress value)  addShippingAddress,required TResult Function( _UpdateShippingAddress value)  updateShippingAddress,required TResult Function( _DeleteShippingAddress value)  deleteShippingAddress,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _ChangePassword value)  changePassword,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AddShippingAddress():
return addShippingAddress(_that);case _UpdateShippingAddress():
return updateShippingAddress(_that);case _DeleteShippingAddress():
return deleteShippingAddress(_that);case _UpdateProfile():
return updateProfile(_that);case _ChangePassword():
return changePassword(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AddShippingAddress value)?  addShippingAddress,TResult? Function( _UpdateShippingAddress value)?  updateShippingAddress,TResult? Function( _DeleteShippingAddress value)?  deleteShippingAddress,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _ChangePassword value)?  changePassword,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddShippingAddress() when addShippingAddress != null:
return addShippingAddress(_that);case _UpdateShippingAddress() when updateShippingAddress != null:
return updateShippingAddress(_that);case _DeleteShippingAddress() when deleteShippingAddress != null:
return deleteShippingAddress(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ShippingAddressRequestModel address)?  addShippingAddress,TResult Function( ShippingAddressRequestModel address)?  updateShippingAddress,TResult Function( int id)?  deleteShippingAddress,TResult Function( ProfileRequestModel profile)?  updateProfile,TResult Function( ChangePasswordRequestModel password)?  changePassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddShippingAddress() when addShippingAddress != null:
return addShippingAddress(_that.address);case _UpdateShippingAddress() when updateShippingAddress != null:
return updateShippingAddress(_that.address);case _DeleteShippingAddress() when deleteShippingAddress != null:
return deleteShippingAddress(_that.id);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.profile);case _ChangePassword() when changePassword != null:
return changePassword(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ShippingAddressRequestModel address)  addShippingAddress,required TResult Function( ShippingAddressRequestModel address)  updateShippingAddress,required TResult Function( int id)  deleteShippingAddress,required TResult Function( ProfileRequestModel profile)  updateProfile,required TResult Function( ChangePasswordRequestModel password)  changePassword,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AddShippingAddress():
return addShippingAddress(_that.address);case _UpdateShippingAddress():
return updateShippingAddress(_that.address);case _DeleteShippingAddress():
return deleteShippingAddress(_that.id);case _UpdateProfile():
return updateProfile(_that.profile);case _ChangePassword():
return changePassword(_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ShippingAddressRequestModel address)?  addShippingAddress,TResult? Function( ShippingAddressRequestModel address)?  updateShippingAddress,TResult? Function( int id)?  deleteShippingAddress,TResult? Function( ProfileRequestModel profile)?  updateProfile,TResult? Function( ChangePasswordRequestModel password)?  changePassword,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddShippingAddress() when addShippingAddress != null:
return addShippingAddress(_that.address);case _UpdateShippingAddress() when updateShippingAddress != null:
return updateShippingAddress(_that.address);case _DeleteShippingAddress() when deleteShippingAddress != null:
return deleteShippingAddress(_that.id);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.profile);case _ChangePassword() when changePassword != null:
return changePassword(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SubmitProfileEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProfileEvent.started()';
}


}




/// @nodoc


class _AddShippingAddress implements SubmitProfileEvent {
  const _AddShippingAddress(this.address);
  

 final  ShippingAddressRequestModel address;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddShippingAddressCopyWith<_AddShippingAddress> get copyWith => __$AddShippingAddressCopyWithImpl<_AddShippingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddShippingAddress&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'SubmitProfileEvent.addShippingAddress(address: $address)';
}


}

/// @nodoc
abstract mixin class _$AddShippingAddressCopyWith<$Res> implements $SubmitProfileEventCopyWith<$Res> {
  factory _$AddShippingAddressCopyWith(_AddShippingAddress value, $Res Function(_AddShippingAddress) _then) = __$AddShippingAddressCopyWithImpl;
@useResult
$Res call({
 ShippingAddressRequestModel address
});




}
/// @nodoc
class __$AddShippingAddressCopyWithImpl<$Res>
    implements _$AddShippingAddressCopyWith<$Res> {
  __$AddShippingAddressCopyWithImpl(this._self, this._then);

  final _AddShippingAddress _self;
  final $Res Function(_AddShippingAddress) _then;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_AddShippingAddress(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ShippingAddressRequestModel,
  ));
}


}

/// @nodoc


class _UpdateShippingAddress implements SubmitProfileEvent {
  const _UpdateShippingAddress(this.address);
  

 final  ShippingAddressRequestModel address;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateShippingAddressCopyWith<_UpdateShippingAddress> get copyWith => __$UpdateShippingAddressCopyWithImpl<_UpdateShippingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateShippingAddress&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'SubmitProfileEvent.updateShippingAddress(address: $address)';
}


}

/// @nodoc
abstract mixin class _$UpdateShippingAddressCopyWith<$Res> implements $SubmitProfileEventCopyWith<$Res> {
  factory _$UpdateShippingAddressCopyWith(_UpdateShippingAddress value, $Res Function(_UpdateShippingAddress) _then) = __$UpdateShippingAddressCopyWithImpl;
@useResult
$Res call({
 ShippingAddressRequestModel address
});




}
/// @nodoc
class __$UpdateShippingAddressCopyWithImpl<$Res>
    implements _$UpdateShippingAddressCopyWith<$Res> {
  __$UpdateShippingAddressCopyWithImpl(this._self, this._then);

  final _UpdateShippingAddress _self;
  final $Res Function(_UpdateShippingAddress) _then;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_UpdateShippingAddress(
null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as ShippingAddressRequestModel,
  ));
}


}

/// @nodoc


class _DeleteShippingAddress implements SubmitProfileEvent {
  const _DeleteShippingAddress(this.id);
  

 final  int id;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteShippingAddressCopyWith<_DeleteShippingAddress> get copyWith => __$DeleteShippingAddressCopyWithImpl<_DeleteShippingAddress>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteShippingAddress&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SubmitProfileEvent.deleteShippingAddress(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteShippingAddressCopyWith<$Res> implements $SubmitProfileEventCopyWith<$Res> {
  factory _$DeleteShippingAddressCopyWith(_DeleteShippingAddress value, $Res Function(_DeleteShippingAddress) _then) = __$DeleteShippingAddressCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteShippingAddressCopyWithImpl<$Res>
    implements _$DeleteShippingAddressCopyWith<$Res> {
  __$DeleteShippingAddressCopyWithImpl(this._self, this._then);

  final _DeleteShippingAddress _self;
  final $Res Function(_DeleteShippingAddress) _then;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteShippingAddress(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _UpdateProfile implements SubmitProfileEvent {
  const _UpdateProfile(this.profile);
  

 final  ProfileRequestModel profile;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'SubmitProfileEvent.updateProfile(profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $SubmitProfileEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 ProfileRequestModel profile
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(_UpdateProfile(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileRequestModel,
  ));
}


}

/// @nodoc


class _ChangePassword implements SubmitProfileEvent {
  const _ChangePassword(this.password);
  

 final  ChangePasswordRequestModel password;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordCopyWith<_ChangePassword> get copyWith => __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'SubmitProfileEvent.changePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordCopyWith<$Res> implements $SubmitProfileEventCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(_ChangePassword value, $Res Function(_ChangePassword) _then) = __$ChangePasswordCopyWithImpl;
@useResult
$Res call({
 ChangePasswordRequestModel password
});




}
/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(this._self, this._then);

  final _ChangePassword _self;
  final $Res Function(_ChangePassword) _then;

/// Create a copy of SubmitProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_ChangePassword(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as ChangePasswordRequestModel,
  ));
}


}

/// @nodoc
mixin _$SubmitProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProfileState()';
}


}

/// @nodoc
class $SubmitProfileStateCopyWith<$Res>  {
$SubmitProfileStateCopyWith(SubmitProfileState _, $Res Function(SubmitProfileState) __);
}


/// Adds pattern-matching-related methods to [SubmitProfileState].
extension SubmitProfileStatePatterns on SubmitProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingSubmitProfile value)?  loadingSubmitProfile,TResult Function( AddShippingAddressSuccess value)?  addShippingAddressSuccess,TResult Function( UpdateProfileSuccess value)?  updateProfileSuccess,TResult Function( UpdateShippingAddressSuccess value)?  updateShippingAddressSuccess,TResult Function( DeleteShippingAddressSuccess value)?  deleteShippingAddressSuccess,TResult Function( ChangePasswordSuccess value)?  changePasswordSuccess,TResult Function( ErrorSubmitProfile value)?  errorSubmitProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitProfile() when loadingSubmitProfile != null:
return loadingSubmitProfile(_that);case AddShippingAddressSuccess() when addShippingAddressSuccess != null:
return addShippingAddressSuccess(_that);case UpdateProfileSuccess() when updateProfileSuccess != null:
return updateProfileSuccess(_that);case UpdateShippingAddressSuccess() when updateShippingAddressSuccess != null:
return updateShippingAddressSuccess(_that);case DeleteShippingAddressSuccess() when deleteShippingAddressSuccess != null:
return deleteShippingAddressSuccess(_that);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that);case ErrorSubmitProfile() when errorSubmitProfile != null:
return errorSubmitProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingSubmitProfile value)  loadingSubmitProfile,required TResult Function( AddShippingAddressSuccess value)  addShippingAddressSuccess,required TResult Function( UpdateProfileSuccess value)  updateProfileSuccess,required TResult Function( UpdateShippingAddressSuccess value)  updateShippingAddressSuccess,required TResult Function( DeleteShippingAddressSuccess value)  deleteShippingAddressSuccess,required TResult Function( ChangePasswordSuccess value)  changePasswordSuccess,required TResult Function( ErrorSubmitProfile value)  errorSubmitProfile,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingSubmitProfile():
return loadingSubmitProfile(_that);case AddShippingAddressSuccess():
return addShippingAddressSuccess(_that);case UpdateProfileSuccess():
return updateProfileSuccess(_that);case UpdateShippingAddressSuccess():
return updateShippingAddressSuccess(_that);case DeleteShippingAddressSuccess():
return deleteShippingAddressSuccess(_that);case ChangePasswordSuccess():
return changePasswordSuccess(_that);case ErrorSubmitProfile():
return errorSubmitProfile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingSubmitProfile value)?  loadingSubmitProfile,TResult? Function( AddShippingAddressSuccess value)?  addShippingAddressSuccess,TResult? Function( UpdateProfileSuccess value)?  updateProfileSuccess,TResult? Function( UpdateShippingAddressSuccess value)?  updateShippingAddressSuccess,TResult? Function( DeleteShippingAddressSuccess value)?  deleteShippingAddressSuccess,TResult? Function( ChangePasswordSuccess value)?  changePasswordSuccess,TResult? Function( ErrorSubmitProfile value)?  errorSubmitProfile,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingSubmitProfile() when loadingSubmitProfile != null:
return loadingSubmitProfile(_that);case AddShippingAddressSuccess() when addShippingAddressSuccess != null:
return addShippingAddressSuccess(_that);case UpdateProfileSuccess() when updateProfileSuccess != null:
return updateProfileSuccess(_that);case UpdateShippingAddressSuccess() when updateShippingAddressSuccess != null:
return updateShippingAddressSuccess(_that);case DeleteShippingAddressSuccess() when deleteShippingAddressSuccess != null:
return deleteShippingAddressSuccess(_that);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that);case ErrorSubmitProfile() when errorSubmitProfile != null:
return errorSubmitProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingSubmitProfile,TResult Function( String message)?  addShippingAddressSuccess,TResult Function( UpdateProfileResponseModel data)?  updateProfileSuccess,TResult Function( String message)?  updateShippingAddressSuccess,TResult Function( String message)?  deleteShippingAddressSuccess,TResult Function( String message)?  changePasswordSuccess,TResult Function( String message)?  errorSubmitProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitProfile() when loadingSubmitProfile != null:
return loadingSubmitProfile();case AddShippingAddressSuccess() when addShippingAddressSuccess != null:
return addShippingAddressSuccess(_that.message);case UpdateProfileSuccess() when updateProfileSuccess != null:
return updateProfileSuccess(_that.data);case UpdateShippingAddressSuccess() when updateShippingAddressSuccess != null:
return updateShippingAddressSuccess(_that.message);case DeleteShippingAddressSuccess() when deleteShippingAddressSuccess != null:
return deleteShippingAddressSuccess(_that.message);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that.message);case ErrorSubmitProfile() when errorSubmitProfile != null:
return errorSubmitProfile(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingSubmitProfile,required TResult Function( String message)  addShippingAddressSuccess,required TResult Function( UpdateProfileResponseModel data)  updateProfileSuccess,required TResult Function( String message)  updateShippingAddressSuccess,required TResult Function( String message)  deleteShippingAddressSuccess,required TResult Function( String message)  changePasswordSuccess,required TResult Function( String message)  errorSubmitProfile,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingSubmitProfile():
return loadingSubmitProfile();case AddShippingAddressSuccess():
return addShippingAddressSuccess(_that.message);case UpdateProfileSuccess():
return updateProfileSuccess(_that.data);case UpdateShippingAddressSuccess():
return updateShippingAddressSuccess(_that.message);case DeleteShippingAddressSuccess():
return deleteShippingAddressSuccess(_that.message);case ChangePasswordSuccess():
return changePasswordSuccess(_that.message);case ErrorSubmitProfile():
return errorSubmitProfile(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingSubmitProfile,TResult? Function( String message)?  addShippingAddressSuccess,TResult? Function( UpdateProfileResponseModel data)?  updateProfileSuccess,TResult? Function( String message)?  updateShippingAddressSuccess,TResult? Function( String message)?  deleteShippingAddressSuccess,TResult? Function( String message)?  changePasswordSuccess,TResult? Function( String message)?  errorSubmitProfile,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingSubmitProfile() when loadingSubmitProfile != null:
return loadingSubmitProfile();case AddShippingAddressSuccess() when addShippingAddressSuccess != null:
return addShippingAddressSuccess(_that.message);case UpdateProfileSuccess() when updateProfileSuccess != null:
return updateProfileSuccess(_that.data);case UpdateShippingAddressSuccess() when updateShippingAddressSuccess != null:
return updateShippingAddressSuccess(_that.message);case DeleteShippingAddressSuccess() when deleteShippingAddressSuccess != null:
return deleteShippingAddressSuccess(_that.message);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that.message);case ErrorSubmitProfile() when errorSubmitProfile != null:
return errorSubmitProfile(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements SubmitProfileState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProfileState.initial()';
}


}




/// @nodoc


class LoadingSubmitProfile implements SubmitProfileState {
  const LoadingSubmitProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingSubmitProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubmitProfileState.loadingSubmitProfile()';
}


}




/// @nodoc


class AddShippingAddressSuccess implements SubmitProfileState {
  const AddShippingAddressSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddShippingAddressSuccessCopyWith<AddShippingAddressSuccess> get copyWith => _$AddShippingAddressSuccessCopyWithImpl<AddShippingAddressSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddShippingAddressSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProfileState.addShippingAddressSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddShippingAddressSuccessCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $AddShippingAddressSuccessCopyWith(AddShippingAddressSuccess value, $Res Function(AddShippingAddressSuccess) _then) = _$AddShippingAddressSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddShippingAddressSuccessCopyWithImpl<$Res>
    implements $AddShippingAddressSuccessCopyWith<$Res> {
  _$AddShippingAddressSuccessCopyWithImpl(this._self, this._then);

  final AddShippingAddressSuccess _self;
  final $Res Function(AddShippingAddressSuccess) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddShippingAddressSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateProfileSuccess implements SubmitProfileState {
  const UpdateProfileSuccess(this.data);
  

 final  UpdateProfileResponseModel data;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileSuccessCopyWith<UpdateProfileSuccess> get copyWith => _$UpdateProfileSuccessCopyWithImpl<UpdateProfileSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'SubmitProfileState.updateProfileSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileSuccessCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $UpdateProfileSuccessCopyWith(UpdateProfileSuccess value, $Res Function(UpdateProfileSuccess) _then) = _$UpdateProfileSuccessCopyWithImpl;
@useResult
$Res call({
 UpdateProfileResponseModel data
});




}
/// @nodoc
class _$UpdateProfileSuccessCopyWithImpl<$Res>
    implements $UpdateProfileSuccessCopyWith<$Res> {
  _$UpdateProfileSuccessCopyWithImpl(this._self, this._then);

  final UpdateProfileSuccess _self;
  final $Res Function(UpdateProfileSuccess) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(UpdateProfileSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UpdateProfileResponseModel,
  ));
}


}

/// @nodoc


class UpdateShippingAddressSuccess implements SubmitProfileState {
  const UpdateShippingAddressSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateShippingAddressSuccessCopyWith<UpdateShippingAddressSuccess> get copyWith => _$UpdateShippingAddressSuccessCopyWithImpl<UpdateShippingAddressSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateShippingAddressSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProfileState.updateShippingAddressSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpdateShippingAddressSuccessCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $UpdateShippingAddressSuccessCopyWith(UpdateShippingAddressSuccess value, $Res Function(UpdateShippingAddressSuccess) _then) = _$UpdateShippingAddressSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UpdateShippingAddressSuccessCopyWithImpl<$Res>
    implements $UpdateShippingAddressSuccessCopyWith<$Res> {
  _$UpdateShippingAddressSuccessCopyWithImpl(this._self, this._then);

  final UpdateShippingAddressSuccess _self;
  final $Res Function(UpdateShippingAddressSuccess) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UpdateShippingAddressSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteShippingAddressSuccess implements SubmitProfileState {
  const DeleteShippingAddressSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteShippingAddressSuccessCopyWith<DeleteShippingAddressSuccess> get copyWith => _$DeleteShippingAddressSuccessCopyWithImpl<DeleteShippingAddressSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteShippingAddressSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProfileState.deleteShippingAddressSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteShippingAddressSuccessCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $DeleteShippingAddressSuccessCopyWith(DeleteShippingAddressSuccess value, $Res Function(DeleteShippingAddressSuccess) _then) = _$DeleteShippingAddressSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DeleteShippingAddressSuccessCopyWithImpl<$Res>
    implements $DeleteShippingAddressSuccessCopyWith<$Res> {
  _$DeleteShippingAddressSuccessCopyWithImpl(this._self, this._then);

  final DeleteShippingAddressSuccess _self;
  final $Res Function(DeleteShippingAddressSuccess) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DeleteShippingAddressSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ChangePasswordSuccess implements SubmitProfileState {
  const ChangePasswordSuccess(this.message);
  

 final  String message;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordSuccessCopyWith<ChangePasswordSuccess> get copyWith => _$ChangePasswordSuccessCopyWithImpl<ChangePasswordSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProfileState.changePasswordSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordSuccessCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $ChangePasswordSuccessCopyWith(ChangePasswordSuccess value, $Res Function(ChangePasswordSuccess) _then) = _$ChangePasswordSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ChangePasswordSuccessCopyWithImpl<$Res>
    implements $ChangePasswordSuccessCopyWith<$Res> {
  _$ChangePasswordSuccessCopyWithImpl(this._self, this._then);

  final ChangePasswordSuccess _self;
  final $Res Function(ChangePasswordSuccess) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChangePasswordSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ErrorSubmitProfile implements SubmitProfileState {
  const ErrorSubmitProfile(this.message);
  

 final  String message;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorSubmitProfileCopyWith<ErrorSubmitProfile> get copyWith => _$ErrorSubmitProfileCopyWithImpl<ErrorSubmitProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorSubmitProfile&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubmitProfileState.errorSubmitProfile(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorSubmitProfileCopyWith<$Res> implements $SubmitProfileStateCopyWith<$Res> {
  factory $ErrorSubmitProfileCopyWith(ErrorSubmitProfile value, $Res Function(ErrorSubmitProfile) _then) = _$ErrorSubmitProfileCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorSubmitProfileCopyWithImpl<$Res>
    implements $ErrorSubmitProfileCopyWith<$Res> {
  _$ErrorSubmitProfileCopyWithImpl(this._self, this._then);

  final ErrorSubmitProfile _self;
  final $Res Function(ErrorSubmitProfile) _then;

/// Create a copy of SubmitProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorSubmitProfile(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
