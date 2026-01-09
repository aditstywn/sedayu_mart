part of 'submit_cart_bloc.dart';

@freezed
class SubmitCartEvent with _$SubmitCartEvent {
  const factory SubmitCartEvent.started() = _Started;
  const factory SubmitCartEvent.deleteCart(int id) = _DeleteCart;
  const factory SubmitCartEvent.plusStock(UpdateCartRequestModel cart) =
      _PlusStock;
  const factory SubmitCartEvent.reduceStock(UpdateCartRequestModel cart) =
      _ReduceStock;
}
