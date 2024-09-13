import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;

  ImageCarousel({required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true, // Optional: auto play the carousel
        autoPlayInterval: Duration(seconds: 3), // Optional: time between auto plays
        autoPlayAnimationDuration: Duration(milliseconds: 800), // Optional: animation duration for auto play
        pauseAutoPlayOnTouch: true, // Optional: pause auto play when user interacts with carousel
        enlargeCenterPage: true, // Optional: scale up the center page
        viewportFraction: 1.0, // Optional: 1.0 to take full width
        aspectRatio: 16/9, // Optional: aspect ratio of the carousel
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Image.network(
              image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            );
          },
        );
      }).toList(),
    );
  }
}
