import 'package:flutter/material.dart';

class Items {
  final String image;
  final String title;
  final double price;
  final List<Color> colors;
  Items({
    required this.colors,
    required this.image,
    required this.price,
    required this.title,
  });
}

final List<Items> items = [
  Items(colors: [
    Colors.red,
    Colors.black,
    Colors.pink,
  ], image: "assets/images/wireless.png", price: 620, title: "Wireless"),
  Items(colors: [
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ], image: "assets/images/miband.jpg", price: 120, title: "Watch"),
  Items(colors: [
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ], image: "assets/images/miband.jpg", price: 120, title: "Watch"),
  Items(colors: [
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ], image: "assets/images/miband.jpg", price: 120, title: "Watch"),
  Items(colors: [
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ], image: "assets/images/miband.jpg", price: 120, title: "Watch"),
  Items(colors: [
    Colors.green,
    Colors.orange,
    Colors.cyan,
  ], image: "assets/images/miband.jpg", price: 120, title: "Watch"),
];
