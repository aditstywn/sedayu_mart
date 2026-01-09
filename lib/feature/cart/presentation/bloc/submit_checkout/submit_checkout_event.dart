part of 'submit_checkout_bloc.dart';

@freezed
class SubmitCheckoutEvent with _$SubmitCheckoutEvent {
  const factory SubmitCheckoutEvent.started() = _Started;
  const factory SubmitCheckoutEvent.checkoutDetail(
    CheckoutRequestModel checkout,
  ) = _CheckoutDetail;
  const factory SubmitCheckoutEvent.checkoutCart(
    CheckoutCartRequestModel checkout,
  ) = _CheckoutCart;
}
