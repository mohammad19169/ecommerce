import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';
import 'package:smit_task/widgets/ProductCard.dart';

class WishlistScreen extends StatelessWidget {
  final List<Product> wishlistItems;

  WishlistScreen({required this.wishlistItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: wishlistItems.isEmpty
          ? Center(child: Text('No items in your wishlist'))
          : GridView.builder(
        itemCount: wishlistItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2 / 3,
        ),
        itemBuilder: (context, index) {
          final product = wishlistItems[index];
          return ProductCard(
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
