import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../mq.dart';


class Banners extends StatefulWidget {
  const Banners({
    Key key,
  }) : super(key: key);

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Widget> _banners = List.generate(
    3,
    (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Image.asset(
        'assets/images/vegs_banner.png',
        fit: BoxFit.fill,
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _banners.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height * 0.2,      
      child: Stack(
        fit: StackFit.expand,
        children: [
          TabBarView(
            children: _banners,
            controller: _tabController,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(_banners.length, (index) {
                  return PageIndicator(
                    index: index,
                    controller: _tabController,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class PageIndicator extends StatefulWidget {
  final int index;  
  final TabController controller;
  const PageIndicator({
    Key key, this.index, this.controller,
  }) : super(key: key);

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {

  bool _expanded;

  @override
  void initState() {    
    super.initState();
    _expanded = widget.index == widget.controller.index;

    // add listener to tabcontroller to update page indicator size
    widget.controller.addListener(() { 
      setState(() {
        _expanded = widget.index == widget.controller.index;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),      
      width: _expanded ? 15 : 5,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),      
        color: _expanded ? kPrimaryColor : Colors.grey,
      ),
    );
  }
}
