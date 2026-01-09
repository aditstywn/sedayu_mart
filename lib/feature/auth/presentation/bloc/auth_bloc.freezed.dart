// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Login value)?  login,TResult Function( _Register value)?  register,TResult Function( _Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Login() when login != null:
return login(_that);case _Register() when register != null:
return register(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Login value)  login,required TResult Function( _Register value)  register,required TResult Function( _Logout value)  logout,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Login():
return login(_that);case _Register():
return register(_that);case _Logout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Login value)?  login,TResult? Function( _Register value)?  register,TResult? Function( _Logout value)?  logout,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Login() when login != null:
return login(_that);case _Register() when register != null:
return register(_that);case _Logout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( LoginRequestModel login)?  login,TResult Function( RegisterRequestModel register)?  register,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Login() when login != null:
return login(_that.login);case _Register() when register != null:
return register(_that.register);case _Logout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( LoginRequestModel login)  login,required TResult Function( RegisterRequestModel register)  register,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Login():
return login(_that.login);case _Register():
return register(_that.register);case _Logout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( LoginRequestModel login)?  login,TResult? Function( RegisterRequestModel register)?  register,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Login() when login != null:
return login(_that.login);case _Register() when register != null:
return register(_that.register);case _Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AuthEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.started()';
}


}




/// @nodoc


class _Login implements AuthEvent {
  const _Login(this.login);
  

 final  LoginRequestModel login;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCopyWith<_Login> get copyWith => __$LoginCopyWithImpl<_Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthEvent.login(login: $login)';
}


}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) = __$LoginCopyWithImpl;
@useResult
$Res call({
 LoginRequestModel login
});




}
/// @nodoc
class __$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_Login(
null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as LoginRequestModel,
  ));
}


}

/// @nodoc


class _Register implements AuthEvent {
  const _Register(this.register);
  

 final  RegisterRequestModel register;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCopyWith<_Register> get copyWith => __$RegisterCopyWithImpl<_Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register&&(identical(other.register, register) || other.register == register));
}


@override
int get hashCode => Object.hash(runtimeType,register);

@override
String toString() {
  return 'AuthEvent.register(register: $register)';
}


}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) = __$RegisterCopyWithImpl;
@useResult
$Res call({
 RegisterRequestModel register
});




}
/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? register = null,}) {
  return _then(_Register(
null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as RegisterRequestModel,
  ));
}


}

/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( LoadingAuth value)?  loadingAuth,TResult Function( LoginSuccess value)?  loginSuccess,TResult Function( RegisterSuccess value)?  registerSuccess,TResult Function( LogoutSuccess value)?  logoutSuccess,TResult Function( ErrorAuth value)?  errorAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingAuth() when loadingAuth != null:
return loadingAuth(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case ErrorAuth() when errorAuth != null:
return errorAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( LoadingAuth value)  loadingAuth,required TResult Function( LoginSuccess value)  loginSuccess,required TResult Function( RegisterSuccess value)  registerSuccess,required TResult Function( LogoutSuccess value)  logoutSuccess,required TResult Function( ErrorAuth value)  errorAuth,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case LoadingAuth():
return loadingAuth(_that);case LoginSuccess():
return loginSuccess(_that);case RegisterSuccess():
return registerSuccess(_that);case LogoutSuccess():
return logoutSuccess(_that);case ErrorAuth():
return errorAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( LoadingAuth value)?  loadingAuth,TResult? Function( LoginSuccess value)?  loginSuccess,TResult? Function( RegisterSuccess value)?  registerSuccess,TResult? Function( LogoutSuccess value)?  logoutSuccess,TResult? Function( ErrorAuth value)?  errorAuth,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case LoadingAuth() when loadingAuth != null:
return loadingAuth(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case ErrorAuth() when errorAuth != null:
return errorAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loadingAuth,TResult Function( LoginResponseModel login)?  loginSuccess,TResult Function( SuccessResponseModel register)?  registerSuccess,TResult Function( LogoutResponseModel logout)?  logoutSuccess,TResult Function( String message)?  errorAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingAuth() when loadingAuth != null:
return loadingAuth();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.login);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.register);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that.logout);case ErrorAuth() when errorAuth != null:
return errorAuth(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loadingAuth,required TResult Function( LoginResponseModel login)  loginSuccess,required TResult Function( SuccessResponseModel register)  registerSuccess,required TResult Function( LogoutResponseModel logout)  logoutSuccess,required TResult Function( String message)  errorAuth,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case LoadingAuth():
return loadingAuth();case LoginSuccess():
return loginSuccess(_that.login);case RegisterSuccess():
return registerSuccess(_that.register);case LogoutSuccess():
return logoutSuccess(_that.logout);case ErrorAuth():
return errorAuth(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loadingAuth,TResult? Function( LoginResponseModel login)?  loginSuccess,TResult? Function( SuccessResponseModel register)?  registerSuccess,TResult? Function( LogoutResponseModel logout)?  logoutSuccess,TResult? Function( String message)?  errorAuth,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case LoadingAuth() when loadingAuth != null:
return loadingAuth();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.login);case RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.register);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that.logout);case ErrorAuth() when errorAuth != null:
return errorAuth(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements AuthState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class LoadingAuth implements AuthState {
  const LoadingAuth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadingAuth()';
}


}




/// @nodoc


class LoginSuccess implements AuthState {
  const LoginSuccess(this.login);
  

 final  LoginResponseModel login;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<LoginSuccess> get copyWith => _$LoginSuccessCopyWithImpl<LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess&&(identical(other.login, login) || other.login == login));
}


@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'AuthState.loginSuccess(login: $login)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LoginSuccessCopyWith(LoginSuccess value, $Res Function(LoginSuccess) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 LoginResponseModel login
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<$Res>
    implements $LoginSuccessCopyWith<$Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess _self;
  final $Res Function(LoginSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(LoginSuccess(
null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as LoginResponseModel,
  ));
}


}

/// @nodoc


class RegisterSuccess implements AuthState {
  const RegisterSuccess(this.register);
  

 final  SuccessResponseModel register;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterSuccessCopyWith<RegisterSuccess> get copyWith => _$RegisterSuccessCopyWithImpl<RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterSuccess&&(identical(other.register, register) || other.register == register));
}


@override
int get hashCode => Object.hash(runtimeType,register);

@override
String toString() {
  return 'AuthState.registerSuccess(register: $register)';
}


}

/// @nodoc
abstract mixin class $RegisterSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $RegisterSuccessCopyWith(RegisterSuccess value, $Res Function(RegisterSuccess) _then) = _$RegisterSuccessCopyWithImpl;
@useResult
$Res call({
 SuccessResponseModel register
});




}
/// @nodoc
class _$RegisterSuccessCopyWithImpl<$Res>
    implements $RegisterSuccessCopyWith<$Res> {
  _$RegisterSuccessCopyWithImpl(this._self, this._then);

  final RegisterSuccess _self;
  final $Res Function(RegisterSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? register = null,}) {
  return _then(RegisterSuccess(
null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as SuccessResponseModel,
  ));
}


}

/// @nodoc


class LogoutSuccess implements AuthState {
  const LogoutSuccess(this.logout);
  

 final  LogoutResponseModel logout;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutSuccessCopyWith<LogoutSuccess> get copyWith => _$LogoutSuccessCopyWithImpl<LogoutSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutSuccess&&(identical(other.logout, logout) || other.logout == logout));
}


@override
int get hashCode => Object.hash(runtimeType,logout);

@override
String toString() {
  return 'AuthState.logoutSuccess(logout: $logout)';
}


}

/// @nodoc
abstract mixin class $LogoutSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $LogoutSuccessCopyWith(LogoutSuccess value, $Res Function(LogoutSuccess) _then) = _$LogoutSuccessCopyWithImpl;
@useResult
$Res call({
 LogoutResponseModel logout
});




}
/// @nodoc
class _$LogoutSuccessCopyWithImpl<$Res>
    implements $LogoutSuccessCopyWith<$Res> {
  _$LogoutSuccessCopyWithImpl(this._self, this._then);

  final LogoutSuccess _self;
  final $Res Function(LogoutSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? logout = null,}) {
  return _then(LogoutSuccess(
null == logout ? _self.logout : logout // ignore: cast_nullable_to_non_nullable
as LogoutResponseModel,
  ));
}


}

/// @nodoc


class ErrorAuth implements AuthState {
  const ErrorAuth(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorAuthCopyWith<ErrorAuth> get copyWith => _$ErrorAuthCopyWithImpl<ErrorAuth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorAuth&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.errorAuth(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorAuthCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorAuthCopyWith(ErrorAuth value, $Res Function(ErrorAuth) _then) = _$ErrorAuthCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorAuthCopyWithImpl<$Res>
    implements $ErrorAuthCopyWith<$Res> {
  _$ErrorAuthCopyWithImpl(this._self, this._then);

  final ErrorAuth _self;
  final $Res Function(ErrorAuth) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorAuth(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
