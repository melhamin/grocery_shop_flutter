import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_shop/constants.dart';
import 'package:grocery_shop/models/models.dart';
import 'package:grocery_shop/mq.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/banners.dart';
import 'package:grocery_shop/screens/shop_screen/widgets/grocery_item.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/best_selling.dart';
import 'widgets/exclusive_offers.dart';
import 'widgets/groceries.dart';
import 'widgets/meats.dart';
import 'widgets/search_field.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/carrot.svg'),
              SizedBox(height: 5),
              Text('Istanbul, Levent'),
              SizedBox(height: 10),
              SearchField(),
              SizedBox(height: 10),
              Banners(),
              SizedBox(height: 10),
              _buildSectiontitle('Exclusive Offers', () {}),
              ExclusiveOffers(),
              SizedBox(height: 10),
              _buildSectiontitle('Best Sellings', () {}),
              BestSellings(),
              SizedBox(height: 10),
              _buildSectiontitle('Groceries', () {}),
              Groceries(),
              SizedBox(height: 10),
              _buildSectiontitle('Meats', () {}),
              Meats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectiontitle(String title, [Function onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle.copyWith(fontSize: 18),
          ),
          InkWell(
            onTap: onTap ?? () {},
            child: Text(
              'See all',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
