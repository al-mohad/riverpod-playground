import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_playground/models/product.dart';

final cartNotifierProvider =
    ChangeNotifierProvider<CartNotifier>((ref) => CartNotifier());

class CartNotifier extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;

  addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  removeProduct(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
