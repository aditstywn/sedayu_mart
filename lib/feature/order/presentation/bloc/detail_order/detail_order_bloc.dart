import 'package:bloc/bloc.dart';
import '../../../data/datasource/order_remote_datasource.dart';
import '../../../data/models/response/detail_order_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_order_event.dart';
part 'detail_order_state.dart';
part 'detail_order_bloc.freezed.dart';

class DetailOrderBloc extends Bloc<DetailOrderEvent, DetailOrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  DetailOrderBloc(this.orderRemoteDatasource) : super(Initial()) {
    on<_DetailOrder>((event, emit) async {
      emit(LoadingDetailOrder());
      final result = await orderRemoteDatasource.detailOrder(event.id);
      result.fold(
        (l) => emit(ErrorDetailOrder(l)),
        (r) => emit(DetailOrderSuccess(r)),
      );
    });
  }
}
