part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = Initial;
  const factory ProductState.loadingProduct() = LoadingProduct;
  const factory ProductState.getProductSuccess(ProductResponseModel product) =
      GetProductSuccess;
  const factory ProductState.errorProduct(String message) = ErrorProduct;
}
