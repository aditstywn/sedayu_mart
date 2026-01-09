import 'package:dartz/dartz.dart';
import '../models/response/detail_order_response_model.dart';
import '../models/response/order_response_model.dart';

import '../../../../core/config/api_driver.dart';
import '../../../../core/config/handle_response.dart';

class OrderRemoteDatasource {
  final _driver = ApiDriver();
  Future<Either<String, OrderResponseModel>> getOrder() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/pesanan',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => OrderResponseModel.fromJson(body),
        errorMessage: 'Gagal Memuat Pesanan',
      );
    } catch (e) {
      return const Left('Gagal Memuat Pesanan');
    }
  }

  Future<Either<String, DetailOrderResponseModel>> detailOrder(int id) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/pesanan/show/$id',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => DetailOrderResponseModel.fromJson(body),
        errorMessage: 'Gagal Memuat Detail Pesanan',
      );
    } catch (e) {
      return const Left('Gagal Memuat Detail Pesanan');
    }
  }
}
