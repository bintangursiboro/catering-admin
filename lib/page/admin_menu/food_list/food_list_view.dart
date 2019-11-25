import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  final List<FoodListData> foodList;

  FoodListView({
    this.foodList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(foodList.length, (index) {
          return Center(
            child: Text('Item ${foodList[index].nama}'),
          );
        }),
      ),
    );
  }
}
