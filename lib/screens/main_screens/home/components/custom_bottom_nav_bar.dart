import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_bottom_nav_items.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.callback,
  }) : super(key: key);

  final Function callback;

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BottomNavigationBar(
      items: customBottomNavBarItems,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: _onNavItemClicked(widget.callback),
    ));
  }

  Function _onNavItemClicked(Function callback) {
    setPageIndex(int pageIndex) {
      setState(() {
        _selectedIndex = pageIndex;
        callback(_selectedIndex);
      });
    }

    return setPageIndex;
  }
}
