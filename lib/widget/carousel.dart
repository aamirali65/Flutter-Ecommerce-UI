import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousol extends StatefulWidget {
  const Carousol({super.key});

  @override
  State<Carousol> createState() => _CarousolState();
}

class _CarousolState extends State<Carousol> {
  final List<String> images = [
    'assets/images/slider1.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider4.jpg',
    'assets/images/slider5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.30,
        aspectRatio: 16/9, // Adjust aspect ratio as needed
        viewportFraction: 0.8, // Adjust fraction as needed
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
      items: images.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
