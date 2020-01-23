import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class DashboardState extends Equatable {
  final mProps;
  DashboardState([this.mProps = const []]);

  @override
  List<Object> get props => mProps;
}

class DashboardInitial extends DashboardState {}

class CurrencyLoaded extends DashboardState {
  final FlutterMoneyFormatter formatter;
  CurrencyLoaded({this.formatter}) : super([formatter]);
}

class DashboardError extends DashboardState {}

class DashboardPhotoLoaded extends DashboardState {
  final List<Uint8List> listImage;
  DashboardPhotoLoaded({this.listImage}) : super([listImage]);
}
