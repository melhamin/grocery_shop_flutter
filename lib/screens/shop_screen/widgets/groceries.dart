import 'package:flutter/material.dart';
import 'package:grocery_shop/models/models.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constants.dart';
import '../../../mq.dart';

class Groceries extends StatelessWidget {
  Groceries({
    Key key,
  }) : super(key: key);

  final List<MGroceries> _items = [
    MGroceries(
      title: 'Pulses',
      color: Hexcolor('#F8A44C').withOpacity(0.15),
      url: 'assets/images/pulses.png',
    ),
    MGroceries(
      title: 'Rice',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/rice.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height * 0.13,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (_, i) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MQuery.width * 0.6,
          decoration: BoxDecoration(
            color: _items[i].color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Image.asset(_items[i].url),
              SizedBox(width: 10),
              Text(_items[i].title, style: kTitleStyle),
            ],
          ),
        ),
        separatorBuilder: (_, __) => SizedBox(width: 10),
      ),
    );
  }
}
