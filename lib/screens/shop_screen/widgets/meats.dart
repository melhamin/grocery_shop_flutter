import 'package:flutter/material.dart';
import 'package:grocery_shop/models/models.dart';

import '../../../mq.dart';
import 'grocery_item.dart';


class Meats extends StatelessWidget {
  Meats({
    Key key,
  }) : super(key: key);

  final List<MGrocery> _items = [
    MGrocery(
      name: 'Beef Bone',
      description: '500g',
      url: 'assets/images/beef_bone.png',
      price: 7.99,            
    ),
    MGrocery(
      name: 'Broiler Chicken',
      description: '1kg',
      url: 'assets/images/chicken.png',
      price: 6.99,            
    ),
    MGrocery(
      name: 'Beef Bone',
      description: '400g',
      url: 'assets/images/beef_bone.png',
      price: 6.99,            
    ),
    MGrocery(
      name: 'Broiler Chicken',
      description: '1kg',
      url: 'assets/images/chicken.png',
      price: 6.99,            
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
