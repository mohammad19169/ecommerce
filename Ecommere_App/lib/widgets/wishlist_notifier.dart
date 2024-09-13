import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';

class WishlistNotifier extends ChangeNotifier {
  final Set<Product> _wishlist = Set<Product>();

  Set<Product> get wishlist => _wishlist;

  void toggleWishlist(Product product) {
    if (_wishlist.contains(product)) {
      _wishlist.remove(product);
    } else {
      _wishlist.add(product);
    }
    notifyListeners(); // Notify listeners to update the UI
  }
}
