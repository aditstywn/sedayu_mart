part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loadingAuth() = LoadingAuth;
  const factory AuthState.loginSuccess(LoginResponseModel login) = LoginSuccess;
  const factory AuthState.registerSuccess(SuccessResponseModel register) =
      RegisterSuccess;
  const factory AuthState.logoutSuccess(LogoutResponseModel logout) =
      LogoutSuccess;
  const factory AuthState.errorAuth(String message) = ErrorAuth;
}
