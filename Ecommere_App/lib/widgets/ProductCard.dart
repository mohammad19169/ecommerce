import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final bool isFavorited;
  final VoidCallback onFavoriteToggle;
  final VoidCallback onTap;
  final VoidCallback onAddToCart;

  ProductCard({
    required this.product,
    required this.isFavorited,
    required this.onFavoriteToggle,
    required this.onTap,
    required this.onAddToCart,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool isFavorited;

  @override
  void initState() {
    super.initState();
    isFavorited = widget.isFavorited;
  }

  void _toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
    widget.onFavoriteToggle();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                widget.product.images.isNotEmpty ? widget.product.images[0] : '',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.broken_image);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Suse',
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "\$${widget.product.price.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Text(
                        "Rating: ${widget.product.rating}",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorited ? Icons.favorite : Icons.favorite_rounded,
                          color: isFavorited ? Colors.yellow : Colors.grey,
                        ),
                        onPressed: _toggleFavorite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
