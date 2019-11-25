import 'package:equatable/equatable.dart';

abstract class FoodListEvent extends Equatable {
  FoodListEvent([List props = const []]) : super([props]);
}

class GetFoodListEvent extends FoodListEvent {}
