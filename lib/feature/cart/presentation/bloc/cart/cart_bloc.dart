import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/response/cart_response_model.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRemoteDatasource cartRemoteDatasource;
  CartBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_GetCart>((event, emit) async {
      emit(const CartState.loadingCart());
      final result = await cartRemoteDatasource.getCart();
      result.fold(
        (l) => emit(CartState.cartError(l)),
        (r) => emit(CartState.getCartSuccess(r)),
      );
    });
  }
}
