import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/models/comment.dart';

class NovaService {
  final FirebaseClient client;

  NovaService({FirebaseClient? client}) : client = client ?? FirebaseClient();

  Future<void> addComment({required Comment comment}) async {
    client.setData(collectionName: comment.collectionName, body: comment.toJson());
  }
}
