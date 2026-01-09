import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/product_remote_datasource.dart';
import '../../../data/models/response/detail_product_response_model.dart';

part 'detail_product_bloc.freezed.dart';
part 'detail_product_event.dart';
part 'detail_product_state.dart';

class DetailProductBloc extends Bloc<DetailProductEvent, DetailProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  DetailProductBloc(this.productRemoteDatasource) : super(Initial()) {
    on<_DetailProduct>((event, emit) async {
      emit(DetailProductState.loadingDetailProduct());
      final result = await productRemoteDatasource.detailProduct(event.id);
      result.fold(
        (l) => emit(DetailProductState.errorDetailProduct(l)),
        (r) => emit(DetailProductState.detailProductSuccess(r)),
      );
    });
  }
}
