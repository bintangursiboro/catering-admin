import 'package:catering_admin/page/admin_menu/order_list/data/order_menu.dart';
import 'package:flutter/material.dart';

class OrderListView extends StatelessWidget {
  final List<OrderMenu> listOrderMenu;

  OrderListView({this.listOrderMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Container(
              height: 40.0,
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 3.0,
              ),
              margin: EdgeInsets.only(
                top: 1.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.1,
                  ),
                ),
              ),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Text('$index'),
                ],
              ),
            ),
          );
        },
        itemCount: 100,
      ),
    );
  }
}
