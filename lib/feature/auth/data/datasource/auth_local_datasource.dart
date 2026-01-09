import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../profile/data/models/response/profile_response_model.dart';
import '../models/request/login_request_model.dart';

class AuthLocalDatasource {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  static const String _accessTokenKey = 'access_token';

  Future<void> saveAccessToken(String accessToken) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accessTokenKey);
  }

  Future<bool> hasAccessToken() async {
    final accessToken = await getAccessToken();
    return accessToken != null && accessToken.isNotEmpty;
  }

  Future<void> deleteAccessToken() async {
    await _storage.delete(key: _accessTokenKey);
  }

  Future<void> saveRememberMe(LoginRequestModel value) async {
    await _storage.write(key: 'remember_me', value: value.toJson());
  }

  Future<LoginRequestModel?> getRememberMe() async {
    final jsonString = await _storage.read(key: 'remember_me');
    if (jsonString == null || jsonString.isEmpty) {
      return null;
    }
    return LoginRequestModel.fromJson(jsonString);
  }

  Future<void> removeRememberMe() async {
    await _storage.delete(key: 'remember_me');
  }

  Future<void> saveUser(ProfilProfil value) async {
    await _storage.write(key: 'user', value: value.toJson());
  }

  Future<ProfilProfil?> getUser() async {
    final jsonString = await _storage.read(key: 'user');
    if (jsonString == null || jsonString.isEmpty) {
      return null;
    }
    return ProfilProfil.fromJson(jsonString);
  }

  Future<void> removeUser() async {
    await _storage.delete(key: 'user');
  }

  Future<void> onBoarding(bool value) async {
    await _storage.write(key: 'onboarding', value: value.toString());
  }

  Future<bool> getOnBoarding() async {
    final value = await _storage.read(key: 'onboarding');
    if (value == null || value.isEmpty) {
      return false;
    }
    return value.toLowerCase() == 'true';
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
