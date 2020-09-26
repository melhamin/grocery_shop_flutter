import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class NavBarItem extends StatefulWidget {
  final int index;
  final int activeIndex;
  final dynamic icon;
  final ValueChanged<int> onTabChanged;
  const NavBarItem({
    Key key,
    this.icon,
    this.index,
    this.activeIndex,
    this.onTabChanged,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 1,
      upperBound: 1.3,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap() {
    // change currentIndex to this tab's index
    if (widget.index != widget.activeIndex) {
      widget.onTabChanged(widget.index);
      _controller.forward().then((value) => _controller.reverse());
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ScaleTransition(
            scale: _controller,
            child: SvgPicture.asset(widget.icon['icon'],
                color:
                    widget.activeIndex == widget.index ? kPrimaryColor : null),
          ),
          // Spacer(),
          Text(
            widget.icon['title'],
            style: TextStyle(
                color:
                    widget.activeIndex == widget.index ? kPrimaryColor : null),
          ),
        ],
      ),
    );
  }
}
