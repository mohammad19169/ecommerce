import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';
import 'package:smit_task/widgets/ProductCard.dart';

class WishlistScreen extends StatefulWidget {
  final List<Product> wishlistItems;
  WishlistScreen({required this.wishlistItems});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<Product> cartItems = [];

  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:  Text('My Wishlist')),
      ),
      body: widget.wishlistItems.isEmpty
          ? Center(child: Text('No items in your wishlist'))
          : GridView.builder(
        itemCount: widget.wishlistItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          final product = widget.wishlistItems[index];
          return ProductCard(
            onAddToCart: () => addToCart(product),
            product: product,
            isFavorited: true,
            onFavoriteToggle: () {

            },
            onTap: () {

            },
          );
        },
      ),
    );
  }
}
