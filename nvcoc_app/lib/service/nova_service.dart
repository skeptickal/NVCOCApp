import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/models/housechurch.dart';
import 'package:nvcoc_app/models/worship_details.dart';

class NovaService {
  final FirebaseClient client;

  NovaService({FirebaseClient? client}) : client = client ?? FirebaseClient();

  //Comment Cards
  Future<void> addComment({required Comment comment}) async {
    client.setData(collectionName: comment.collectionName, body: comment.toJson());
  }

  //House Churches
  Future<List<Housechurch>> getHouseChurches() async {
    QuerySnapshot<Map<String, dynamic>> data = await client.getData(collectionName: 'house churches');
    return data.docs.map((doc) => Housechurch.fromJson(doc.data())).toList();
  }

  //Worship Details
  Future<List<WorshipDetails>> getWorshipDetails() async {
    QuerySnapshot<Map<String, dynamic>> data = await client.getData(collectionName: 'worship info');
    return data.docs.map((doc) => WorshipDetails.fromJson(doc.data())).toList();
  }
}
