import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/models/ebulletin.dart';
import 'package:nvcoc_app/models/housechurch.dart';
import 'package:nvcoc_app/models/message.dart';
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
  Future<WorshipDetails?> getWorshipDetails() async {
    dynamic data = await client.getDoc(collectionName: 'worship info', docId: 'Worship With Us');
    if (data != null) {
      return WorshipDetails.fromJson(data);
    } else {
      return null;
    }
  }

  //Message
  Future<Message?> getMessage() async {
    dynamic data = await client.getDoc(collectionName: 'message', docId: 'message');
    if (data != null) {
      return Message.fromJson(data);
    } else {
      return null;
    }
  }

  //Ebulletin
  Future<Ebulletin?> getEbulletin() async {
    dynamic data = await client.getDoc(collectionName: 'ebulletins', docId: 'ebulletin link');
    if (data != null) {
      return Ebulletin.fromJson(data);
    } else {
      return null;
    }
  }
}
