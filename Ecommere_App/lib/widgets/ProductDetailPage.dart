import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';
import 'package:smit_task/widgets/carousal.dart'; // Ensure correct import

class Productdetailpage extends StatelessWidget {
  const Productdetailpage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Optional: remove shadow
        title: Text('Product Details'), // Optional: Add a title
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCarousel(images: product.images),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(product.description),
                  SizedBox(height: 16),
                  Text(
                    'Price: \$${product.price}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Rating: ${product.rating}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text('Available Sizes:'),
                  Wrap(
                    spacing: 8,
                    children: product.sizes.map((size) => Chip(label: Text(size))).toList(),
                  ),
                  SizedBox(height: 16),
                  Text('Available Colors:'),
                  Wrap(
                    spacing: 8,
                    children: product.color.map((color) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                      ),
                    )).toList(),
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        alignment: Alignment.center,
                        backgroundColor: Colors.brown
                      ),
                      child: Text('Add to Cart',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
                    ),
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
