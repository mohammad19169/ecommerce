import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isFavorited;
  final VoidCallback onFavoriteToggle;
  final VoidCallback onTap;

  ProductCard({
    required this.product,
    required this.isFavorited,
    required this.onFavoriteToggle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            IconButton(
              icon: Icon(
                isFavorited ? Icons.favorite : Icons.favorite_border,
                color: isFavorited ? Colors.yellow : Colors.grey,
              ),
              onPressed: onFavoriteToggle,
            ),
          ],
        ),
      ),
    );
  }
}
