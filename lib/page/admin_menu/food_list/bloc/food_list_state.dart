import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:equatable/equatable.dart';

class FoodListState extends Equatable {
  FoodListState([this.mProps = const []]);

  final mProps;

  @override
  List<Object> get props => mProps;
}

class FoodListInitial extends FoodListState {}

class FoodListLoaded extends FoodListState {
  final List<MenuMakanan> foodListData;
  FoodListLoaded({this.foodListData}) : super([foodListData]);
}

class FoodListLoading extends FoodListState {}

class FoodListError extends FoodListState {}
