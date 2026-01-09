part of 'order_sumary_bloc.dart';

@freezed
class OrderSumaryState with _$OrderSumaryState {
  const factory OrderSumaryState.initial() = Initial;
  const factory OrderSumaryState.loadingOrderSumary() = LoadingOrderSumary;
  const factory OrderSumaryState.buyNowSuccess(BuyNowResponseModel buyNow) =
      BuyNowSuccess;
  const factory OrderSumaryState.buyCartSuccess(BuyCartResponseModel buyCart) =
      BuyCartSuccess;
  const factory OrderSumaryState.errorOrderSumary(String message) =
      ErrorOrderSumary;
}
