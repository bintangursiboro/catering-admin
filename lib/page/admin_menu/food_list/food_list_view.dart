import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:catering_admin/widget/custom_widget.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  final List<MenuMakanan> foodList;
  final bool isLoading;
  final bool isError;

  FoodListView({
    this.foodList,
    this.isError,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: (foodList.length > 0)
          ? GridView.count(
              crossAxisCount: 2,
              children: List.generate(foodList.length, (index) {
                return GridMenu(
                  menuMakanan: foodList[index],
                );
              }),
            )
          : ((isLoading)
              ? showLoadingProgress()
              : ((isError) ? showErrorTextWidget() : Container())),
    );
  }
}
