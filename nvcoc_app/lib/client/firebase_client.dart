import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseClient {
  final FirebaseFirestore firestore;
  final _firebaseMessaging = FirebaseMessaging.instance;

  FirebaseClient({FirebaseFirestore? firestore}) : firestore = firestore ?? FirebaseFirestore.instance;

  Future<dynamic> setData({required String collectionName, dynamic body}) async {
    CollectionReference collection = firestore.collection(collectionName);

    try {
      await collection.doc().set(body);
      return 'Success';
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> getData({required String collectionName}) async {
    CollectionReference collection = firestore.collection(collectionName);
    return collection.get();
  }

  Future<dynamic> getDoc({required String collectionName, required String docId}) async {
    CollectionReference collection = firestore.collection(collectionName);
    DocumentSnapshot<Object?> documentSnapshot = await collection.doc(docId).get();

    if (documentSnapshot.exists) {
      return documentSnapshot.data();
    } else {
      return null;
    }
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    print('token: $fCMToken');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}
