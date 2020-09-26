import 'package:flutter/material.dart';
import 'package:grocery_shop/models/models.dart';

import '../../../mq.dart';
import 'grocery_item.dart';

class BestSellings extends StatelessWidget {
  BestSellings({
    Key key,
  }) : super(key: key);

  final List<MGrocery> _items = [
    MGrocery(
      name: 'Red Peppper',
      description: '1kg',
      url: 'assets/images/pepper.png',
      price: 3.99,
    ),
    MGrocery(
      name: 'Ginger',
      description: '1kg',
      price: 5.99,
      url: 'assets/images/ginger.png',
    ),
    MGrocery(
      name: 'Red Apples',
      description: '1kg',
      price: 4.99,
      url: 'assets/images/apples.png',
    ),
    MGrocery(
      name: 'Red Apple',
      description: '1kg',
      price: 5.99,
      url: 'assets/images/bananas.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height * 0.3,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (_, i) => GroceryItem(item: _items[i]),
        separatorBuilder: (_, __) => SizedBox(width: 10),
      ),
    );
  }
}
