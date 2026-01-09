import 'package:bloc/bloc.dart';
import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/response/buy_cart_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request/buy_cart_request_model.dart';
import '../../../data/models/request/buy_now_request_model.dart';
import '../../../data/models/response/buy_now_response_model.dart';

part 'order_sumary_event.dart';
part 'order_sumary_state.dart';
part 'order_sumary_bloc.freezed.dart';

class OrderSumaryBloc extends Bloc<OrderSumaryEvent, OrderSumaryState> {
  final CartRemoteDatasource cartRemoteDatasource;
  OrderSumaryBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_BuyNow>((event, emit) async {
      emit(LoadingOrderSumary());
      final result = await cartRemoteDatasource.buyNow(event.buy);
      result.fold(
        (l) => emit(ErrorOrderSumary(l)),
        (r) => emit(BuyNowSuccess(r)),
      );
    });
    on<_BuyCart>((event, emit) async {
      emit(LoadingOrderSumary());
      final result = await cartRemoteDatasource.buyCart(event.buy);
      result.fold(
        (l) => emit(ErrorOrderSumary(l)),
        (r) => emit(BuyCartSuccess(r)),
      );
    });
  }
}
