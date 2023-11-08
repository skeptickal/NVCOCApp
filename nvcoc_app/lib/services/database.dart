import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //final String? uid;
  DatabaseService();

//collection reference

  final CollectionReference commentCollection =
      FirebaseFirestore.instance.collection('comments');

//when someone submits a comment card add doc
  Future submitCommentCard(
    String? firstName,
    String? lastName,
    String? email,
    String? comment,
    String? join,
    String? iAm,
    String? country,
    String? address1,
    String? address2,
    String? city,
    String? state,
    String? zip,
    String? phone,
    String email1,
  ) async {
    return await commentCollection.doc().set({
      'a. First Name': firstName,
      'b. Last Name': lastName,
      'c. Email': email,
      'd. Comment': comment,
      'e. I would like to': join,
      'f. I am': iAm,
      'g. Country': country,
      'h. Address Line 1': address1,
      'i. Address Line 2': address2,
      'j. City': city,
      'k. State': state,
      'l. ZIP': zip,
      'm. Phone Number': phone,
      'n. Email Address (if changed)': email1,
    });
  }
}
