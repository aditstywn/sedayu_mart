import 'package:bloc/bloc.dart';
import '../../../../../core/config/success_response_model.dart';
import '../../../data/datasource/cart_remote_datasource.dart';
import '../../../data/models/request/checkout_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request/checkout_cart_request_model.dart';

part 'submit_checkout_event.dart';
part 'submit_checkout_state.dart';
part 'submit_checkout_bloc.freezed.dart';

class SubmitCheckoutBloc
    extends Bloc<SubmitCheckoutEvent, SubmitCheckoutState> {
  final CartRemoteDatasource cartRemoteDatasource;
  SubmitCheckoutBloc(this.cartRemoteDatasource) : super(Initial()) {
    on<_CheckoutDetail>((event, emit) async {
      emit(LoadingSubmitCheckout());
      final result = await cartRemoteDatasource.checkoutDetail(event.checkout);
      result.fold(
        (l) => emit(ErrorSubmitCheckout(l)),
        (r) => emit(CheckoutSubmitSuccess(r)),
      );
    });
    on<_CheckoutCart>((event, emit) async {
      emit(LoadingSubmitCheckout());
      final result = await cartRemoteDatasource.checkoutCart(event.checkout);
      result.fold(
        (l) => emit(ErrorSubmitCheckout(l)),
        (r) => emit(CheckoutSubmitSuccess(r)),
      );
    });
  }
}
