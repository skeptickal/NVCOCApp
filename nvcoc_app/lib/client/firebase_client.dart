import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseClient {
  Future<dynamic> setData({required String collectionName, dynamic body}) async {
    CollectionReference collection = FirebaseFirestore.instance.collection(collectionName);
    await collection.doc().set(body);
  }

  Future<dynamic> getData({required String collectionName}) async {
    CollectionReference collection = FirebaseFirestore.instance.collection(collectionName);
    return collection.get();
  }
}
