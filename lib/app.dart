import 'package:catering_admin/page/add_food/add_food.dart';
import 'package:catering_admin/page/admin_menu/admin_menu.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        AddFood.PATH: (BuildContext context) => AddFood(),
      },
      title: 'Admin Catering',
      home: AdminMenu(),
    );
  }
}
