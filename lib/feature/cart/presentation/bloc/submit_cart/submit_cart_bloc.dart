import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/request/update_cart_request_model.dart';
import '../../../data/models/response/update_cart_response_model.dart';

part 'submit_cart_bloc.freezed.dart';
part 'submit_cart_event.dart';
part 'submit_cart_state.dart';

class SubmitCartBloc extends Bloc<SubmitCartEvent, SubmitCartState> {
  final CartRemoteDatasource cartRemoteDatasource;
  SubmitCartBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_PlusStock>((event, emit) async {
      emit(const SubmitCartState.loadingSubmitCart());
      final result = await cartRemoteDatasource.plusStock(event.cart);
      result.fold(
        (l) => emit(SubmitCartState.errorSubmitCart(l)),
        (r) => emit(SubmitCartState.updateStockSuccess(r)),
      );
    });
    on<_ReduceStock>((event, emit) async {
      emit(const SubmitCartState.loadingSubmitCart());
      final result = await cartRemoteDatasource.reduceStock(event.cart);
      result.fold(
        (l) => emit(SubmitCartState.errorSubmitCart(l)),
        (r) => emit(SubmitCartState.updateStockSuccess(r)),
      );
    });
    on<_DeleteCart>((event, emit) async {
      emit(const SubmitCartState.loadingSubmitCart());
      final result = await cartRemoteDatasource.deleteCart(event.id);
      result.fold(
        (l) => emit(SubmitCartState.errorSubmitCart(l)),
        (r) => emit(SubmitCartState.deleteCartSuccess(r)),
      );
    });
  }
}
