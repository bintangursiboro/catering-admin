import 'package:equatable/equatable.dart';

class DashboardEvent extends Equatable {
  final mProps;
  DashboardEvent([this.mProps = const []]);

  @override
  List<Object> get props => mProps;
}

class ChangeCurrency extends DashboardEvent {
  final double harga;
  ChangeCurrency({this.harga}) : super([harga]);
}

class OpenCamera extends DashboardEvent {}
