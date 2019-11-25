import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodListService {
  final firestoreInstance = Firestore.instance;
  static const String PATH = 'menu_makanan';

  Future<List<FoodListData>> getFoodList() async {
    List<FoodListData> foodListData = [];
    return await firestoreInstance
        .collection(PATH)
        .getDocuments()
        .then((querySnapshot) {
      if (querySnapshot.documents != null) {
        querySnapshot.documents.forEach((document) {
          foodListData.add(FoodListData.fromJson(document.data));
        });
        return foodListData;
      }
      throw Exception();
    });
  }
}
