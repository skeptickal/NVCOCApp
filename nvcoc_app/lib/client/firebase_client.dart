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

  Future<dynamic> getDoc({required String collectionName, required String docId}) async {
    CollectionReference collection = FirebaseFirestore.instance.collection(collectionName);
    DocumentSnapshot<Object?> documentSnapshot = await collection.doc(docId).get();

    if (documentSnapshot.exists) {
      return documentSnapshot.data();
    } else {
      return null;
    }
  }
}
