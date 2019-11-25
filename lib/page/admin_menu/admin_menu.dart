import 'package:catering_admin/page/admin_menu/admin_menu_view.dart';
import 'package:flutter/material.dart';

class AdminMenu extends StatefulWidget {
  @override
  _AdminMenu createState() => _AdminMenu();
}

class _AdminMenu extends State<AdminMenu> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void onTapBottomNav(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdminMenuView(
      pageController: pageController,
      currentIndex: currentIndex,
      onTapBottomNav: onTapBottomNav,
    );
  }
}
