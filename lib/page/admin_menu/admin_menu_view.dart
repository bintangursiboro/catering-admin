import 'package:catering_admin/page/admin_menu/dashboard/dashboard.dart';
import 'package:catering_admin/page/admin_menu/food_list/food_list.dart';
import 'package:catering_admin/page/admin_menu/order_list/order_list.dart';
import 'package:flutter/material.dart';

class AdminMenuView extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final Function(int) onTapBottomNav;

  AdminMenuView({
    this.pageController,
    this.currentIndex,
    this.onTapBottomNav,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Catering'),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          FoodList(),
          Dashboard(),
          OrderList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text('Food List'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Order'),
          ),
        ],
        onTap: (index) {
          pageController.animateToPage(
            index,
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 500),
          );
          onTapBottomNav(index);
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
