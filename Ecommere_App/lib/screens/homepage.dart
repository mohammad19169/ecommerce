import 'package:flutter/material.dart';
import 'package:smit_task/screens/AddToCart.dart';
import 'package:smit_task/screens/ProfileClass.dart';
import 'package:smit_task/widgets/ProductCard.dart';
import 'package:smit_task/widgets/ProductModel.dart';
import 'package:smit_task/widgets/Productdetailpage.dart';
import 'package:smit_task/screens/WishlistScreen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key, required this.onWishlistUpdated,required this.wishlist,});
  final Set<Product> wishlist;
  final VoidCallback onWishlistUpdated;
  @override
  _HomepageState createState() => _HomepageState();

}

class _HomepageState extends State<homepage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';
  List<Product> cartItems = [];
  void addToCart(Product product) {
    setState(() {
      cartItems.add(product);
    });
  }

  final Set<Product> wishlist = Set<Product>();

  final List<Product> products = [
    Product(
      name: 'Bag',
      description: 'A stylish bag.',
      price: 50.0,
      rating: 5.0,
      images: [
        'https://images.unsplash.com/photo-1506152983158-b4a74a01c721?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGJhZ3xlbnwwfHwwfHx8MA%3D%3D',
        'https://media.istockphoto.com/id/618976674/photo/fashion-woman-shopping.jpg?s=612x612&w=0&k=20&c=twPlCtJ05j_SsUXjW_ZK3l9UnuC-GbunecDdC03QScQ=',
        'https://i2.pickpik.com/photos/943/890/407/handbags-fashion-editorial-woman-preview.jpg'
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
    Product(
      name: 'Shoes',
      description: 'Comfortable shoes.',
      price: 90.0,
      rating: 4.7,
      images: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrR_VvLy3HYbsqzU7IKn8M5CQhguNszaK1pQ&s'
      ],
      sizes: ['8', '9', '10'],
      color: [Colors.black],
    ),
  ];

  void toggleWishlist(Product product) {
    setState(() {
      if (widget.wishlist.contains(product)) {
        widget.wishlist.remove(product);
      } else {
        widget.wishlist.add(product);
      }
      widget.onWishlistUpdated();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Umer!'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WishlistScreen(
                    wishlistItems: wishlist.toList(),
                  ),
                ),
              );
            },
            icon: Icon(Icons.favorite),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileClass()));}, icon: Icon(Icons.person_2_rounded)),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                  },
                  icon: Icon(Icons.sort_rounded),
                  color: Colors.brown,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category',
                  style: TextStyle(fontSize: 25),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2 / 2.75,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    onAddToCart: () => addToCart(product),
                    product: product,
                    isFavorited: wishlist.contains(product),
                    onFavoriteToggle: () => toggleWishlist(product),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Productdetailpage(
                            product: product,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
