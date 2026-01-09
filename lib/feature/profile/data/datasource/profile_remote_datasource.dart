import 'package:dartz/dartz.dart';
import 'package:flutter_sedayu_app/feature/profile/data/models/request/profile_request_model.dart';
import 'package:flutter_sedayu_app/feature/profile/data/models/request/shipping_address_request_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/api_driver.dart';
import '../../../../core/config/handle_response.dart';
import '../models/response/profile_response_model.dart';
import '../models/response/shipping_address_response_model.dart';
import '../models/response/update_profile_response_model.dart';

class ProfileRemoteDatasource {
  final _driver = ApiDriver();
  Future<Either<String, ProfileResponseModel>> profile() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/profil',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => ProfileResponseModel.fromJson(body),
        errorMessage: 'Profil Gagal Dimuat',
      );
    } catch (e) {
      return const Left('Profil Gagal Dimuat');
    }
  }

  Future<Either<String, UpdateProfileResponseModel>> updateProfile(
    ProfileRequestModel profile,
  ) async {
    try {
      if (profile.image != null) {
        final file = await http.MultipartFile.fromPath(
          'avatar',
          profile.image!.path,
        );

        final fields = profile.toMapString();
        fields['_method'] = 'PUT';

        final response = await _driver.request(
          method: ApiMethod.post,
          url: 'api/mobile/profil/edit-profil/update',
          isMultipart: true,
          fields: fields,
          files: [file],
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => UpdateProfileResponseModel.fromJson(body),
          errorMessage: 'Gagal Memperbarui Profil',
        );
      } else {
        // Regular JSON request without image
        final response = await _driver.request(
          method: ApiMethod.put,
          url: 'api/mobile/profil/edit-profil/update',
          body: profile.toJson(),
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => UpdateProfileResponseModel.fromJson(body),
          errorMessage: 'Gagal Memperbarui Profil',
        );
      }
    } catch (e) {
      return const Left('Gagal Memperbarui Profil');
    }
  }

  Future<Either<String, ShippingAddressResponseModel>> shippingAddress() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/profil/alamat-pengiriman',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => ShippingAddressResponseModel.fromJson(body),
        errorMessage: 'Alamat Pengiriman Gagal Dimuat',
      );
    } catch (e) {
      return const Left('Alamat Pengiriman Gagal Dimuat');
    }
  }

  Future<Either<String, String>> addShippingAddress(
    ShippingAddressRequestModel address,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/profil/alamat-pengiriman/tambah',
        body: address.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => 'Berhasil Menambahkan Alamat Pengiriman',
        errorMessage: 'Gagal Menambahkan Alamat Pengiriman',
      );
    } catch (e) {
      return const Left('Gagal Menambahkan Alamat Pengiriman');
    }
  }

  Future<Either<String, String>> updateShippingAddress(
    ShippingAddressRequestModel address,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.put,
        url: 'api/mobile/profil/alamat-pengiriman/update/${address.id}',
        body: address.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => 'Berhasil Memperbarui Alamat Pengiriman',
        errorMessage: 'Gagal Memperbarui Alamat Pengiriman',
      );
    } catch (e) {
      return const Left('Gagal Memperbarui Alamat Pengiriman');
    }
  }

  Future<Either<String, String>> deleteShippingAddress(int id) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.delete,
        url: 'api/mobile/profil/alamat-pengiriman/hapus/$id',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => 'Berhasil Menghapus Alamat Pengiriman',
        errorMessage: 'Gagal Menghapus Alamat Pengiriman',
      );
    } catch (e) {
      return const Left('Gagal Menghapus Alamat Pengiriman');
    }
  }
}
