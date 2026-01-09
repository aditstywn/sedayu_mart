import 'package:dartz/dartz.dart';
import '../../../../core/config/success_response_model.dart';
import '../models/request/register_request_model.dart';

import '../../../../core/config/api_driver.dart';
import '../../../../core/config/handle_response.dart';
import '../models/request/login_request_model.dart';
import '../models/response/login_response_model.dart';
import '../models/response/logout_response_model.dart';

class AuthRemoteDatasource {
  final _driver = ApiDriver();
  Future<Either<String, LoginResponseModel>> login(
    LoginRequestModel login,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/login',
        body: login.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => LoginResponseModel.fromJson(body),
        errorMessage: 'Login Gagal',
      );
    } catch (e) {
      return const Left('Login Gagal');
    }
  }

  Future<Either<String, SuccessResponseModel>> register(
    RegisterRequestModel register,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/register',
        body: register.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => SuccessResponseModel.fromJson(body),
        errorMessage: 'Register Gagal',
      );
    } catch (e) {
      return const Left('Register Gagal');
    }
  }

  Future<Either<String, LogoutResponseModel>> logout() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/logout',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => LogoutResponseModel.fromJson(body),
        errorMessage: 'Logout Gagal',
      );
    } catch (e) {
      return const Left('Logout Gagal');
    }
  }
}
