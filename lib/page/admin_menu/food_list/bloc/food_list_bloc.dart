import 'package:bloc/bloc.dart';
import 'package:catering_admin/page/admin_menu/food_list/bloc/food_list_event.dart';
import 'package:catering_admin/page/admin_menu/food_list/bloc/food_list_state.dart';
import 'package:catering_admin/page/admin_menu/food_list/service/food_list_service.dart';

class FoodListBloc extends Bloc<FoodListEvent, FoodListState> {
  @override
  FoodListState get initialState => FoodListInitial();

  @override
  Stream<FoodListState> mapEventToState(FoodListEvent event) async* {
    yield FoodListLoading();
    if (event is GetFoodListEvent) {
      try {
        FoodListService foodListService = FoodListService();
        yield await foodListService.getFoodList().then((model) {
          return FoodListLoaded(foodListData: model);
        });
      } catch (e) {
        yield FoodListError();
      }
    }
  }
}
