part of 'order_sumary_bloc.dart';

@freezed
class OrderSumaryEvent with _$OrderSumaryEvent {
  const factory OrderSumaryEvent.started() = _Started;
  const factory OrderSumaryEvent.buyNow(BuyNowRequestModel buy) = _BuyNow;
  const factory OrderSumaryEvent.buyCart(BuyCartRequestModel buy) = _BuyCart;
}
