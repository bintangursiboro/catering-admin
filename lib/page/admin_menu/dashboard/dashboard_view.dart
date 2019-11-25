import 'package:catering_admin/page/add_food/add_food.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Center(
            child: FlatButton(
              child: Text('Tambah Menu'),
              onPressed: () {
                Navigator.pushNamed(context, AddFood.PATH);
              },
            ),
          )
        ],
      ),
    );
  }
}
