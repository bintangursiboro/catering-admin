import 'package:catering_admin/page/admin_menu/food_list/data/food_list_data.dart';
import 'package:catering_admin/utility/exception/no_data_exception.dart';
import 'package:catering_admin/utility/network/firebase_firestore_network_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodListService {
  final firestoreInstance = Firestore.instance;
  static const String PATH = 'menu_makanan';
  final FirebaseFirestoreNetworkInterface _firebaseFirestoreNetworkInterface =
      FirebaseFirestoreNetworkInterface();

  Future<List<MenuMakanan>> getFoodList() async {
    List<MenuMakanan> foodListData = [];

    return await _firebaseFirestoreNetworkInterface
        .getDataByPath(path: PATH)
        .then((documents) {
      if (documents.length > 0) {
        documents.forEach((document) {
          foodListData.add(MenuMakanan.fromJson(document.data));
        });
        return foodListData;
      }
      throw NoDataException();
    });
  }
}
