import 'package:equatable/equatable.dart';

class FoodListEvent extends Equatable {
  @override
  List<Object> get props => null;

  final mProps;

  FoodListEvent([this.mProps = const []]);
}

class GetFoodListEvent extends FoodListEvent {}
