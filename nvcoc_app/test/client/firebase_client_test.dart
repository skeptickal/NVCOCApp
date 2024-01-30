import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/client/firebase_client.dart';

void main() {
  group('FirebaseClient', () {
    test('getData returns data on success', () async {
      final firestore = FakeFirebaseFirestore();

      FirebaseClient client = FirebaseClient(firestore: firestore);
      final collection = firestore.collection('collectionName');
      final snapshot = await collection.get();
      final dynamic result = await client.getData(collectionName: 'collectionName');

      print('Snapshot: ${snapshot.docs.toString()}');
      print('Result: ${result.docs.toString()}');

      expect(result.docs, equals(snapshot.docs));
    });

    test('getDoc returns data on success', () async {
      final firestore = FakeFirebaseFirestore();

      FirebaseClient client = FirebaseClient(firestore: firestore);
      final collection = firestore.collection('collectionName');
      final doc = collection.doc('docId');
      await doc.set({'exampleField': 'exampleValue'});
      final dynamic result = await client.getDoc(
        collectionName: 'collectionName',
        docId: 'docId',
      );
      expect(result, equals({'exampleField': 'exampleValue'}));
    });

    test('setData adds data on success', () async {
      final firestore = FakeFirebaseFirestore();

      FirebaseClient client = FirebaseClient(firestore: firestore);
      final collection = firestore.collection('collectionName');
      final doc = collection.doc('docId');
      await doc.set({'exampleField': 'exampleValue'});

      final result = await client.setData(collectionName: 'collectionName', body: {'exampleField': 'exampleValue'});

      expect(result, 'Success');
    });
  });
}
