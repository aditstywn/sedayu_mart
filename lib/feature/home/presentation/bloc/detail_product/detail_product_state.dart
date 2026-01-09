part of 'detail_product_bloc.dart';

@freezed
class DetailProductState with _$DetailProductState {
  const factory DetailProductState.initial() = Initial;
  const factory DetailProductState.loadingDetailProduct() =
      LoadingDetailProduct;
  const factory DetailProductState.detailProductSuccess(
    DetailProductResponseModel detailProduct,
  ) = DetailProductSuccess;
  const factory DetailProductState.errorDetailProduct(String message) =
      ErrorDetailProduct;
}
