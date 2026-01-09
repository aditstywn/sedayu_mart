// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Profile value)?  profile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Profile() when profile != null:
return profile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Profile value)  profile,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Profile():
return profile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Profile value)?  profile,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Profile() when profile != null:
return profile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  profile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Profile() when profile != null:
return profile();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  profile,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Profile():
return profile();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  profile,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Profile() when profile != null:
return profile();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProfileEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.started()';
}


}




/// @nodoc


class _Profile implements ProfileEvent {
  const _Profile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Profile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.profile()';
}


}




/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingProfile value)?  loadingProfile,TResult Function( ProfileSuccess value)?  profileSuccess,TResult Function( ErrorProfile value)?  errorProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingProfile() when loadingProfile != null:
return loadingProfile(_that);case ProfileSuccess() when profileSuccess != null:
return profileSuccess(_that);case ErrorProfile() when errorProfile != null:
return errorProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingProfile value)  loadingProfile,required TResult Function( ProfileSuccess value)  profileSuccess,required TResult Function( ErrorProfile value)  errorProfile,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingProfile():
return loadingProfile(_that);case ProfileSuccess():
return profileSuccess(_that);case ErrorProfile():
return errorProfile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingProfile value)?  loadingProfile,TResult? Function( ProfileSuccess value)?  profileSuccess,TResult? Function( ErrorProfile value)?  errorProfile,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingProfile() when loadingProfile != null:
return loadingProfile(_that);case ProfileSuccess() when profileSuccess != null:
return profileSuccess(_that);case ErrorProfile() when errorProfile != null:
return errorProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingProfile,TResult Function( ProfileResponseModel profile)?  profileSuccess,TResult Function( String message)?  errorProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingProfile() when loadingProfile != null:
return loadingProfile();case ProfileSuccess() when profileSuccess != null:
return profileSuccess(_that.profile);case ErrorProfile() when errorProfile != null:
return errorProfile(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingProfile,required TResult Function( ProfileResponseModel profile)  profileSuccess,required TResult Function( String message)  errorProfile,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingProfile():
return loadingProfile();case ProfileSuccess():
return profileSuccess(_that.profile);case ErrorProfile():
return errorProfile(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingProfile,TResult? Function( ProfileResponseModel profile)?  profileSuccess,TResult? Function( String message)?  errorProfile,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingProfile() when loadingProfile != null:
return loadingProfile();case ProfileSuccess() when profileSuccess != null:
return profileSuccess(_that.profile);case ErrorProfile() when errorProfile != null:
return errorProfile(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ProfileState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class LoadingProfile implements ProfileState {
  const LoadingProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loadingProfile()';
}


}




/// @nodoc


class ProfileSuccess implements ProfileState {
  const ProfileSuccess(this.profile);
  

 final  ProfileResponseModel profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSuccessCopyWith<ProfileSuccess> get copyWith => _$ProfileSuccessCopyWithImpl<ProfileSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSuccess&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'ProfileState.profileSuccess(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileSuccessCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileSuccessCopyWith(ProfileSuccess value, $Res Function(ProfileSuccess) _then) = _$ProfileSuccessCopyWithImpl;
@useResult
$Res call({
 ProfileResponseModel profile
});




}
/// @nodoc
class _$ProfileSuccessCopyWithImpl<$Res>
    implements $ProfileSuccessCopyWith<$Res> {
  _$ProfileSuccessCopyWithImpl(this._self, this._then);

  final ProfileSuccess _self;
  final $Res Function(ProfileSuccess) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(ProfileSuccess(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileResponseModel,
  ));
}


}

/// @nodoc


class ErrorProfile implements ProfileState {
  const ErrorProfile(this.message);
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorProfileCopyWith<ErrorProfile> get copyWith => _$ErrorProfileCopyWithImpl<ErrorProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorProfile&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileState.errorProfile(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorProfileCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ErrorProfileCopyWith(ErrorProfile value, $Res Function(ErrorProfile) _then) = _$ErrorProfileCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorProfileCopyWithImpl<$Res>
    implements $ErrorProfileCopyWith<$Res> {
  _$ErrorProfileCopyWithImpl(this._self, this._then);

  final ErrorProfile _self;
  final $Res Function(ErrorProfile) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorProfile(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
