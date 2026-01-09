import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/config/success_response_model.dart';
import '../../data/datasource/auth_remote_datasource.dart';
import '../../data/models/request/login_request_model.dart';
import '../../data/models/request/register_request_model.dart';
import '../../data/models/response/login_response_model.dart';
import '../../data/models/response/logout_response_model.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDatasource authRemoteDatasource;
  AuthBloc(this.authRemoteDatasource) : super(Initial()) {
    on<_Login>((event, emit) async {
      emit(LoadingAuth());
      final result = await authRemoteDatasource.login(event.login);
      result.fold((l) => emit(ErrorAuth(l)), (r) => emit(LoginSuccess(r)));
    });
    on<_Register>((event, emit) async {
      emit(LoadingAuth());
      final result = await authRemoteDatasource.register(event.register);
      result.fold((l) => emit(ErrorAuth(l)), (r) => emit(RegisterSuccess(r)));
    });
    on<_Logout>((event, emit) async {
      emit(LoadingAuth());
      final result = await authRemoteDatasource.logout();
      result.fold((l) => emit(ErrorAuth(l)), (r) => emit(LogoutSuccess(r)));
    });
  }
}
