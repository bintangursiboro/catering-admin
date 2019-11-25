import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:equatable/equatable.dart';

abstract class FoodListState extends Equatable {
  FoodListState([List props = const []]) : super([props]);
}

class FoodListInitial extends FoodListState {}

class FoodListLoaded extends FoodListState {
  final List<FoodListData> foodListData;
  FoodListLoaded({this.foodListData}) : super([foodListData]);
}

class FoodListLoading extends FoodListState {}
