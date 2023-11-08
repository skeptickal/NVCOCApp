import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nvcoc_app/templates/housechurches.dart';

class DatabaseService {
  //final String? uid;
  DatabaseService();

//collection reference

  final CollectionReference commentCollection =
      FirebaseFirestore.instance.collection('comments');
  final CollectionReference houseChurchCollection =
      FirebaseFirestore.instance.collection('house churches');

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

  List<HouseChurches> _houseChurchFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      //print('Document data: ${doc.data()}');
      return HouseChurches(
        name: doc.get('name') ?? '',
        leaders: doc.get('leaders') ?? '',
        location: doc.get('location') ?? '',
        number: doc.get('number') ?? '',
      );
    }).toList();
  }

  Stream<List<HouseChurches>> get houseChurches {
    return houseChurchCollection.snapshots().map(_houseChurchFromSnapshot);
  }
}
