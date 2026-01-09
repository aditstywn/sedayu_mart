part of 'submit_checkout_bloc.dart';

@freezed
class SubmitCheckoutState with _$SubmitCheckoutState {
  const factory SubmitCheckoutState.initial() = Initial;
  const factory SubmitCheckoutState.loadingSubmitCheckout() =
      LoadingSubmitCheckout;
  const factory SubmitCheckoutState.checkoutSubmitSuccess(
    SuccessResponseModel response,
  ) = CheckoutSubmitSuccess;
  const factory SubmitCheckoutState.errorSubmitCheckout(String message) =
      ErrorSubmitCheckout;
}
