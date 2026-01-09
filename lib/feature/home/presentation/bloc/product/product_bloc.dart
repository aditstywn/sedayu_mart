import 'package:bloc/bloc.dart';
import '../../../data/datasource/product_remote_datasource.dart';
import '../../../data/models/response/product_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  ProductBloc(this.productRemoteDatasource) : super(Initial()) {
    on<_GetProduct>((event, emit) async {
      emit(ProductState.loadingProduct());
      final result = await productRemoteDatasource.product();
      result.fold(
        (l) => emit(ProductState.errorProduct(l)),
        (r) => emit(ProductState.getProductSuccess(r)),
      );
    });
  }
}
