import 'package:flutter/material.dart';

// Grocery item model
class MGrocery {
  final String name;
  final String url;
  final String description;
  final double price;

  MGrocery({this.name, this.url, this.description, this.price});
}

// Categories item model
class MCategory {
  final String title;
  final String url;
  final Color color;

  MCategory({this.title, this.url, this.color});
}

// Cart item model
class MCartItem {
  final MGrocery item;
  int cout;

  MCartItem({this.item, this.cout});
}

class MGroceries {
  final String title;
  final Color color;
  final String url;

  MGroceries({this.title, this.color, this.url});
}
