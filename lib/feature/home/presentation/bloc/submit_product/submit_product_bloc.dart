import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/product_remote_datasource.dart';
import '../../../data/models/request/add_cart_request_model.dart';

part 'submit_product_bloc.freezed.dart';
part 'submit_product_event.dart';
part 'submit_product_state.dart';

class SubmitProductBloc extends Bloc<SubmitProductEvent, SubmitProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  SubmitProductBloc(this.productRemoteDatasource) : super(Initial()) {
    on<_AddCart>((event, emit) async {
      emit(const SubmitProductState.loadingSubmitProduct());
      final result = await productRemoteDatasource.addCart(event.cart);
      result.fold(
        (l) => emit(SubmitProductState.errorSubmitProduct(l)),
        (r) => emit(SubmitProductState.addCartSuccess(r)),
      );
    });
  }
}
