import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/response/cart_response_model.dart';

part 'notif_cart_bloc.freezed.dart';
part 'notif_cart_event.dart';
part 'notif_cart_state.dart';

class NotifCartBloc extends Bloc<NotifCartEvent, NotifCartState> {
  final CartRemoteDatasource cartRemoteDatasource;
  NotifCartBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_GetItemCart>((event, emit) async {
      emit(const NotifCartState.loadingNotifCart());
      final result = await cartRemoteDatasource.getCart();
      result.fold(
        (l) => emit(NotifCartState.errorNotifCart(l)),
        (r) => emit(NotifCartState.getItemCartSuccess(r)),
      );
    });
  }
}
