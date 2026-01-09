part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = Initial;
  const factory OrderState.loadingOrder() = LoadingOrder;
  const factory OrderState.orderSuccess(OrderResponseModel order) =
      OrderSuccess;
  const factory OrderState.orderError(String message) = OrderError;
}
