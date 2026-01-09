part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  const factory CheckoutState.initial() = Initial;
  const factory CheckoutState.loadingCheckout() = LoadingCheckout;
  const factory CheckoutState.checkoutSuccess(
    MainAddressResponseModel address,
    RekeningListResponseModel rekening,
  ) = CheckoutSuccess;
  const factory CheckoutState.errorCheckout(String message) = ErrorCheckout;
}
