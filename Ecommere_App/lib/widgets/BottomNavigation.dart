import 'package:flutter/material.dart';
import 'package:smit_task/screens/AddToCart.dart';
import 'package:smit_task/screens/ChatClass.dart';
import 'package:smit_task/screens/ProfileClass.dart';
import 'package:smit_task/screens/WishlistScreen.dart';
import 'package:smit_task/screens/register.dart';
import 'package:smit_task/utils/AppColors.dart';
import 'package:smit_task/screens/homepage.dart';
import 'package:smit_task/widgets/ProductModel.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final Set<Product> _wishlist = Set<Product>();

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      homepage(
        wishlist: _wishlist,
        onWishlistUpdated: _updateWishlist, // Callback to update wishlist
      ),
     AddToCartPage(),
      WishlistScreen(wishlistItems: _wishlist.toList()),
      ChatClass(),
      ProfileClass(),
    ];
  }

  void _updateWishlist() {
    setState(() {
      _pages[2] = WishlistScreen(wishlistItems: _wishlist.toList());
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        _updateWishlist();
      }
    });
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: CircleAvatar(
        radius: isSelected ? 30 : 25,
        backgroundColor: isSelected ? Colors.brown : Colors.grey,
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.white,
          size: 28,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.textGray,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(Icons.home_rounded, 0),
            _buildNavItem(Icons.shopping_bag_outlined, 1),
            _buildNavItem(Icons.favorite_border, 2),
            _buildNavItem(Icons.chat_bubble_outline, 3),
            _buildNavItem(Icons.person_2_outlined, 4),
          ],
        ),
      ),
    );
  }
}
