part of 'submit_product_bloc.dart';

@freezed
class SubmitProductEvent with _$SubmitProductEvent {
  const factory SubmitProductEvent.started() = _Started;
  const factory SubmitProductEvent.addCart(AddCartRequestModel cart) = _AddCart;
}
