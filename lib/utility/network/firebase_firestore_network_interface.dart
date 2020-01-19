import 'package:catering_admin/utility/logger/firebase_firestore_logger.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseFirestoreNetworkInterface {
  final _firebaseFirestoreInstance = Firestore.instance;
  final FirebaseFirestoreLogger _logger = FirebaseFirestoreLogger();

  Future<List<DocumentSnapshot>> getDataByPath({String path}) async {
    return await _firebaseFirestoreInstance
        .collection(path)
        .getDocuments()
        .then((querySnapshot) {
      if (querySnapshot.documents.length > 0) {
        _logger.onSuccess(querySnapshot);
      } else {
        _logger.onError(querySnapshot);
      }
      return querySnapshot.documents;
    });
  }
}
