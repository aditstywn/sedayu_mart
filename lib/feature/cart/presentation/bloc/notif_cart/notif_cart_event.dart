part of 'notif_cart_bloc.dart';

@freezed
class NotifCartEvent with _$NotifCartEvent {
  const factory NotifCartEvent.started() = _Started;
  const factory NotifCartEvent.getItemCart() = _GetItemCart;
}
