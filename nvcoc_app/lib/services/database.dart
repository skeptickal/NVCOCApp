import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/ebulletin_link.dart';
import 'package:nvcoc_app/templates/housechurches.dart';
import 'package:nvcoc_app/templates/worship_info.dart';

class DatabaseService {
  //final String? uid;
  DatabaseService();

//collection reference

  final CollectionReference commentCollection =
      FirebaseFirestore.instance.collection('comments');
  final CollectionReference houseChurchCollection =
      FirebaseFirestore.instance.collection('house churches');
  final CollectionReference worshipInfoCollection =
      FirebaseFirestore.instance.collection('worship info');
  final CollectionReference eBulletinCollection =
      FirebaseFirestore.instance.collection('ebulletins');

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

  List<Worship> _worshipInfoFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Worship(
        meetingPlace: doc.get('meeting place') ?? errorMessage,
        meetingTime: doc.get('meeting time') ?? errorMessage,
        whatToExpect: doc.get('what to expect') ?? errorMessage,
        whatAboutKids: doc.get('what about kids') ?? errorMessage,
        whatAboutMe: doc.get('what about me') ?? errorMessage,
        unsure: doc.get('unsure') ?? errorMessage,
      );
    }).toList();
  }

  Stream<List<HouseChurches>> get houseChurches {
    return houseChurchCollection.snapshots().map(_houseChurchFromSnapshot);
  }

  Stream<List<Worship>> get worshipInfo {
    return worshipInfoCollection.snapshots().map(_worshipInfoFromSnapshot);
  }

  List<EBulletin> _getEBulletinFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return EBulletin(eBulletinLink: doc.get('ebulletin') ?? errorMessage);
    }).toList();
  }

  Stream<List<EBulletin>> get eBulletinLink {
    return eBulletinCollection.snapshots().map(_getEBulletinFromSnapshot);
  }
}
