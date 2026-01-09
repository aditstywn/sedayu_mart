part of 'detail_order_bloc.dart';

@freezed
class DetailOrderState with _$DetailOrderState {
  const factory DetailOrderState.initial() = Initial;
  const factory DetailOrderState.loadingDetailOrder() = LoadingDetailOrder;
  const factory DetailOrderState.detailOrderSuccess(
    DetailOrderResponseModel detail,
  ) = DetailOrderSuccess;
  const factory DetailOrderState.errorDetailOrder(String message) =
      ErrorDetailOrder;
}
