import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop/constants.dart';
import 'package:grocery_shop/screens/details_screen/item_details_screen.dart';

import 'screens/home_screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Shop',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}


final Map<String, Widget Function(BuildContext)> routes = {
  ItemDetailsSreen.routeName: (_) => ItemDetailsSreen(),
};
