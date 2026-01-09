import 'package:dartz/dartz.dart';

import '../../../../core/config/api_driver.dart';
import '../../../../core/config/handle_response.dart';
import '../models/request/add_cart_request_model.dart';
import '../models/response/detail_product_response_model.dart';
import '../models/response/product_response_model.dart';

class ProductRemoteDatasource {
  final _driver = ApiDriver();
  Future<Either<String, ProductResponseModel>> product() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/beranda/produk',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => ProductResponseModel.fromJson(body),
        errorMessage: 'Produk Gagal Dimuat',
      );
    } catch (e) {
      return const Left('Produk Gagal Dimuat');
    }
  }

  Future<Either<String, DetailProductResponseModel>> detailProduct(
    int id,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/beranda/produk/$id',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => DetailProductResponseModel.fromJson(body),
        errorMessage: 'Detail Gagal Dimuat',
      );
    } catch (e) {
      return const Left('Detail Gagal Dimuat');
    }
  }

  Future<Either<String, String>> addCart(AddCartRequestModel cart) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/beranda/keranjang',
        body: cart.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => 'Berhasil Menambahkan ke Keranjang',
        errorMessage: 'Gagal Menambahkan ke Keranjang',
      );
    } catch (e) {
      return const Left('Gagal Menambahkan ke Keranjang');
    }
  }
}
