import 'package:bloc/bloc.dart';
import '../../../data/datasource/order_remote_datasource.dart';
import '../../../data/models/response/order_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderBloc(this.orderRemoteDatasource) : super(Initial()) {
    on<_GetOrder>((event, emit) async {
      emit(LoadingOrder());
      final result = await orderRemoteDatasource.getOrder();
      result.fold(
        (failure) => emit(OrderError(failure)),
        (order) => emit(OrderSuccess(order)),
      );
    });
  }
}
