import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreLogger {
  void onError(QuerySnapshot querySnapshot) {
    print('Firestore Error: ${querySnapshot.toString()}');
  }

  void onSuccess(QuerySnapshot querySnapshot) {
    print('Firestore Success: ${querySnapshot.documents.toString()}');
  }
}
