import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/api_driver.dart';
import '../../../../core/config/handle_response.dart';
import '../../../../core/config/success_response_model.dart';
import '../models/request/buy_cart_request_model.dart';
import '../models/request/buy_now_request_model.dart';
import '../models/request/checkout_cart_request_model.dart';
import '../models/request/checkout_request_model.dart';
import '../models/request/update_cart_request_model.dart';
import '../models/response/buy_cart_response_model.dart';
import '../models/response/buy_now_response_model.dart';
import '../models/response/cart_response_model.dart';
import '../models/response/main_address_response_model.dart';
import '../models/response/rekening_list_response_model.dart';
import '../models/response/update_cart_response_model.dart';

class CartRemoteDatasource {
  final _driver = ApiDriver();
  Future<Either<String, CartResponseModel>> getCart() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/keranjang',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => CartResponseModel.fromJson(body),
        errorMessage: 'Keranjang Gagal Dimuat',
      );
    } catch (e) {
      return const Left('Keranjang Gagal Dimuat');
    }
  }

  Future<Either<String, UpdateCartResponseModel>> plusStock(
    UpdateCartRequestModel cart,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.put,
        url: 'api/mobile/keranjang/tambah-kuantitas/${cart.id}',
        body: '{"tambah": ${cart.count}}',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => UpdateCartResponseModel.fromJson(body),
        errorMessage: 'Gagal Menambahkan Kuantitas',
      );
    } catch (e) {
      return const Left('Gagal Menambahkan Kuantitas');
    }
  }

  Future<Either<String, UpdateCartResponseModel>> reduceStock(
    UpdateCartRequestModel cart,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.put,
        url: 'api/mobile/keranjang/kurang-kuantitas/${cart.id}',
        body: '{"kurang": ${cart.count}}',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => UpdateCartResponseModel.fromJson(body),
        errorMessage: 'Gagal Mengurangi Kuantitas',
      );
    } catch (e) {
      return const Left('Gagal Mengurangi Kuantitas');
    }
  }

  Future<Either<String, String>> deleteCart(int id) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.delete,
        url: 'api/mobile/keranjang/hapus/$id',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => 'Berhasil Menghapus Item dari Keranjang',
        errorMessage: 'Gagal Menghapus Item dari Keranjang',
      );
    } catch (e) {
      return const Left('Gagal Menghapus Item dari Keranjang');
    }
  }

  Future<Either<String, MainAddressResponseModel>> mainAddress() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/beranda/checkout/alamat-utama',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => MainAddressResponseModel.fromJson(body),
        errorMessage: 'Gagal Memuat Alamat Utama',
      );
    } catch (e) {
      return const Left('Gagal Memuat Alamat Utama');
    }
  }

  Future<Either<String, RekeningListResponseModel>> rekeningList() async {
    try {
      final response = await _driver.request(
        method: ApiMethod.get,
        url: 'api/mobile/beranda/checkout/rekening-list',
        body: '',
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => RekeningListResponseModel.fromJson(body),
        errorMessage: 'Gagal Memuat Daftar Rekening',
      );
    } catch (e) {
      return const Left('Gagal Memuat Daftar Rekening');
    }
  }

  Future<Either<String, BuyNowResponseModel>> buyNow(
    BuyNowRequestModel buy,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/beranda/beli-sekarang',
        body: buy.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => BuyNowResponseModel.fromJson(body),
        errorMessage: 'Gagal Melakukan Beli Sekarang',
      );
    } catch (e) {
      return const Left('Gagal Melakukan Beli Sekarang');
    }
  }

  Future<Either<String, BuyCartResponseModel>> buyCart(
    BuyCartRequestModel buy,
  ) async {
    try {
      final response = await _driver.request(
        method: ApiMethod.post,
        url: 'api/mobile/keranjang/beli-semua',
        body: buy.toJson(),
      );

      return handleResponse(
        response: response,
        fromJson: (String body) => BuyCartResponseModel.fromJson(body),
        errorMessage: 'Gagal Melakukan Beli Sekarang ',
      );
    } catch (e) {
      return const Left('Gagal Melakukan Beli Sekarang ');
    }
  }

  Future<Either<String, SuccessResponseModel>> checkoutDetail(
    CheckoutRequestModel checkout,
  ) async {
    try {
      if (checkout.buktiPembayaran != null) {
        final file = await http.MultipartFile.fromPath(
          'bukti_pembayaran',
          checkout.buktiPembayaran!.path,
        );

        final fields = checkout.toMapString();

        final response = await _driver.request(
          method: ApiMethod.post,
          url: 'api/mobile/beranda/checkout',
          isMultipart: true,
          fields: fields,
          files: [file],
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => SuccessResponseModel.fromJson(body),
          errorMessage: 'Gagal Melakukan Pesanan',
        );
      } else {
        // Regular JSON request without image
        final response = await _driver.request(
          method: ApiMethod.post,
          url: 'api/mobile/beranda/checkout',
          body: checkout.toJson(),
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => SuccessResponseModel.fromJson(body),
          errorMessage: 'Gagal Melakukan Pesanan',
        );
      }
    } catch (e) {
      return const Left('Gagal Melakukan Pesanan');
    }
  }

  Future<Either<String, SuccessResponseModel>> checkoutCart(
    CheckoutCartRequestModel checkout,
  ) async {
    try {
      if (checkout.buktiPembayaran != null) {
        final file = await http.MultipartFile.fromPath(
          'bukti_pembayaran',
          checkout.buktiPembayaran!.path,
        );

        final fields = checkout.toMapString();

        final response = await _driver.request(
          method: ApiMethod.post,
          url: 'api/mobile/keranjang/checkout',
          isMultipart: true,
          fields: fields,
          files: [file],
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => SuccessResponseModel.fromJson(body),
          errorMessage: 'Gagal Melakukan Pesanan',
        );
      } else {
        // Regular JSON request without image
        final response = await _driver.request(
          method: ApiMethod.post,
          url: 'api/mobile/keranjang/checkout',
          body: checkout.toJson(),
        );

        return handleResponse(
          response: response,
          fromJson: (String body) => SuccessResponseModel.fromJson(body),
          errorMessage: 'Gagal Melakukan Pesanan',
        );
      }
    } catch (e) {
      return const Left('Gagal Melakukan Pesanan');
    }
  }
}
