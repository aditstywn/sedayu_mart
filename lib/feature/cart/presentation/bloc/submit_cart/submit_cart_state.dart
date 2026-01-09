part of 'submit_cart_bloc.dart';

@freezed
class SubmitCartState with _$SubmitCartState {
  const factory SubmitCartState.initial() = Initial;
  const factory SubmitCartState.loadingSubmitCart() = LoadingSubmitCart;
  const factory SubmitCartState.updateStockSuccess(
    UpdateCartResponseModel update,
  ) = UpdateStockSuccess;
  const factory SubmitCartState.deleteCartSuccess(String message) =
      DeleteCartSuccess;
  const factory SubmitCartState.errorSubmitCart(String message) =
      ErrorSubmitCart;
}
