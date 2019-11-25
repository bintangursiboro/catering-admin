import 'package:catering_admin/page/add_food/add_food_view.dart';
import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  static const String PATH = '/add-food';
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return AddFoodView();
  }
}
