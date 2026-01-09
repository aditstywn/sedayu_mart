part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = Initial;
  const factory CartState.loadingCart() = LoadingCart;
  const factory CartState.getCartSuccess(CartResponseModel cart) =
      GetCartSuccess;

  const factory CartState.cartError(String message) = CartError;
}
