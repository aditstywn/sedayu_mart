part of 'notif_cart_bloc.dart';

@freezed
class NotifCartState with _$NotifCartState {
  const factory NotifCartState.initial() = Initial;
  const factory NotifCartState.loadingNotifCart() = LoadingNotifCart;
  const factory NotifCartState.getItemCartSuccess(CartResponseModel cart) =
      GetItemCartSuccess;
  const factory NotifCartState.errorNotifCart(String message) = ErrorNotifCart;
}
