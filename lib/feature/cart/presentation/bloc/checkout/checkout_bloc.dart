import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/response/main_address_response_model.dart';
import '../../../data/models/response/rekening_list_response_model.dart';

part 'checkout_bloc.freezed.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final CartRemoteDatasource cartRemoteDatasource;
  CheckoutBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_Checkout>((event, emit) async {
      emit(LoadingCheckout());
      final address = await cartRemoteDatasource.mainAddress();
      final rekening = await cartRemoteDatasource.rekeningList();

      address.fold((l) => emit(ErrorCheckout(l)), (addr) {
        rekening.fold((l) => emit(ErrorCheckout(l)), (rek) {
          emit(CheckoutSuccess(addr, rek));
        });
      });
    });
  }
}
