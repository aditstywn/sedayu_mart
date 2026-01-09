part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(LoginRequestModel login) = _Login;
  const factory AuthEvent.register(RegisterRequestModel register) = _Register;
  const factory AuthEvent.logout() = _Logout;
}
