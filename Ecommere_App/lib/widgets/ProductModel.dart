import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final double rating;
  final List<String> images;
  final List<String> sizes;
  final List<Color> color;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.images,
    required this.sizes,
    required this.color,
  });
}
