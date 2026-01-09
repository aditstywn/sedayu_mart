import 'package:flutter/material.dart';
import 'package:flutter_sedayu_app/feature/cart/data/models/product_item.dart';

class CartItem {
  final ProductItem product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  int get subtotal => (product.price ?? 0) * quantity;
}

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;
  int get itemCount => _items.length;

  int get total => _items.fold(0, (sum, item) => sum + item.subtotal);

  void addItem(ProductItem product, {int quantity = 1}) {
    final existingIndex = _items.indexWhere(
      (item) => item.product.productId == product.productId,
    );

    if (existingIndex >= 0) {
      _items[existingIndex].quantity += quantity;
    } else {
      _items.add(CartItem(product: product, quantity: quantity));
    }
    notifyListeners();
  }

  void updateQuantity(int productId, int quantity) {
    final index = _items.indexWhere(
      (item) => item.product.productId == productId,
    );
    if (index >= 0) {
      if (quantity > 0) {
        _items[index].quantity = quantity;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void removeItem(int productId) {
    _items.removeWhere((item) => item.product.productId == productId);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
