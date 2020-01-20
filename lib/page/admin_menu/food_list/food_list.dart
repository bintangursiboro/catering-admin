import 'package:catering_admin/page/admin_menu/food_list/bloc/food_list_bloc.dart';
import 'package:catering_admin/page/admin_menu/food_list/bloc/food_list_event.dart';
import 'package:catering_admin/page/admin_menu/food_list/bloc/food_list_state.dart';
import 'package:catering_admin/page/admin_menu/food_list/food_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  FoodListBloc _bloc;

  @override
  void initState() {
    _bloc = FoodListBloc();
    _bloc.add(GetFoodListEvent());
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      listener: (BuildContext context, FoodListState state) {},
      child: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, FoodListState state) {
          return FoodListView(
            foodList: (state is FoodListLoaded) ? state.foodListData : [],
            isError: (state is FoodListError),
            isLoading: (state is FoodListLoading),
          );
        },
      ),
    );
  }
}
