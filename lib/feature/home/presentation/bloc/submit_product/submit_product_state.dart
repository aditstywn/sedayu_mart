part of 'submit_product_bloc.dart';

@freezed
class SubmitProductState with _$SubmitProductState {
  const factory SubmitProductState.initial() = Initial;
  const factory SubmitProductState.loadingSubmitProduct() =
      LoadingSubmitProduct;
  const factory SubmitProductState.addCartSuccess(String message) =
      AddCartSuccess;
  const factory SubmitProductState.errorSubmitProduct(String message) =
      ErrorSubmitProduct;
}
