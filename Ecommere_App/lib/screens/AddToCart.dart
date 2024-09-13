import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductModel.dart';
import 'package:smit_task/widgets/ProductCard.dart';

class AddToCartPage extends StatelessWidget {
  // Copy the same product list from homepage
  final List<Product> cartItems = [
    Product(
      name: 'Bag',
      description: 'A stylish bag.',
      price: 50.0,
      rating: 5.0,
      images: [
        'https://images.unsplash.com/photo-1506152983158-b4a74a01c721?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGJhZ3xlbnwwfHwwfHx8MA%3D%3D',
      ],
      sizes: ['S', 'M', 'L', 'XL', 'XXL', 'XXL'],
      color: [Colors.grey, Colors.purple, Colors.black],
    ),
    Product(
      name: 'Brown Jacket',
      description: 'A warm brown jacket.',
      price: 75.0,
      rating: 4.8,
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5fFPP4Nj0c4aIs1rgOuVSly126FldgBINMw&s'
      ],
      sizes: ['M', 'L'],
      color: [Colors.brown],
    ),
    Product(
      name: 'Watch',
      description: 'A classic watch.',
      price: 120.0,
      rating: 4.8,
      images: [
        'https://currenwatches.com.pk/cdn/shop/products/S7d2e9b2df5eb48be959dad1f4655b5e5S_1445x.jpg?v=1713332874'
      ],
      sizes: ['One Size'],
      color: [Colors.black],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double subTotal = cartItems.fold(0, (sum, product) => sum + product.price);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('                  My Cart'),
      ),
      body: Column(
        children: [
          // List of items
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return ListTile(
                  leading: Image.network(
                    product.images[0],
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(product.name),
                  subtitle: Text('Size: ${product.sizes.join(', ')}'),
                  trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                );
              },
            ),
          ),

          // Promo Code section and price details
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Promo Code',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Apply',style: TextStyle(
                        color: Colors.white70
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _buildPriceRow('Sub-Total', '\$$subTotal'),
                _buildPriceRow('Delivery Fee', '\$25.00'),
                _buildPriceRow('Discount', '-\$35.00'),
                Divider(),
                _buildPriceRow('Total Cost', '\$${(subTotal + 25.0 - 35.0).toStringAsFixed(2)}'),
              ],
            ),
          ),

          // Proceed to Checkout button
          Padding(
            padding: const EdgeInsets.only(top:10.0,bottom: 15),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Proceed to Checkout',style: TextStyle(
                  color: Colors.white70
              ),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Colors.brown,
                textStyle: TextStyle(fontSize: 18),
                fixedSize: Size(250, 60)
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
          Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
