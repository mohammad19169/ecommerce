import 'package:flutter/material.dart';
import 'package:smit_task/widgets/ProductCard.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
  TextEditingController searchController = TextEditingController();
  String searchQuery = '';

  // Sample list of products with image URLs, names, and prices
  final List<Map<String, String>> products = [
    {
      'imageurl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTfRkyWnvjVZfqaYkiAZmHQ-DN7ihzZY6UQ&s',
      'name': 'Bag',
      'price': '\$50',
    },
    {
      'imageurl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5fFPP4Nj0c4aIs1rgOuVSly126FldgBINMw&s',
      'name': 'Brown Jacket',
      'price': '\$75',
    },
    {
      'imageurl':
      'https://currenwatches.com.pk/cdn/shop/products/S7d2e9b2df5eb48be959dad1f4655b5e5S_1445x.jpg?v=1713332874',
      'name': 'Watch',
      'price': '\$120',
    },
    {
      'imageurl':
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrR_VvLy3HYbsqzU7IKn8M5CQhguNszaK1pQ&s',
      'name': 'Shoes',
      'price': '\$90',
    },
    {
      'imageurl':
      'https://www.outbacktrading.com/cdn/shop/products/outback-trading-company-hats-high-country-28733779968134.jpg?v=1628176964&width=1280',
      'name': 'Hat',
      'price': '\$30',
    },
    {
      'imageurl':
      'https://garderobe.pk/cdn/shop/files/navy-blue-cotton-pantpantgarderobe-clothing-469837.webp?v=1719311233',
      'name': 'Pant',
      'price': '\$20',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Umer!'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person_2_rounded))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
                        print('Search query: $searchQuery');
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      // Add sorting action here
                    },
                    icon: Icon(Icons.sort_rounded),
                    color: Colors.brown,
                  )
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  String imageUrl = products[index]['imageurl']!;
                  String name = products[index]['name']!;
                  String price = products[index]['price']!;

                  return ProductCard(
                    imageurl: imageUrl,
                    name: name,
                    price: price,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
