import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/models/ebulletin.dart';
import 'package:nvcoc_app/models/housechurch.dart';
import 'package:nvcoc_app/models/leader.dart';
import 'package:nvcoc_app/models/message.dart';
import 'package:nvcoc_app/models/worship_details.dart';
import 'package:nvcoc_app/service/nova_service.dart';

import '../mocks.dart';

void main() {
  Comment comment = Comment(
    'collectionName',
    'John',
    'Smith',
    'johnsmith@gmail.com',
    'comment',
    'join',
    'campus',
    'US',
    '1234 Broad St.',
    '123',
    'Washington DC',
    'VA',
    '12345',
    '123-456-7890',
    'johnsmith1@gmail.com',
  );
  WorshipDetails worshipDetails = WorshipDetails(
    meetingPlace: 'here',
    meetingTime: 'now',
    whatAboutKids: 'none pls',
    whatAboutMe: 'ur ok',
    whatToExpect: 'the best',
    unsure: 'idk man',
  );
  Ebulletin ebulletin = Ebulletin(link: 'link_example');
  Message message = Message(message: 'hello', messageTitle: 'example title');
  Housechurch housechurch = Housechurch(leaders: 'me & me', name: 'me', number: 'mine', location: 'here');
  Leader leaders = Leader(leaderName: 'me', role: 'leader of things', image: 'image.png');

  late NovaService sut;
  late MockFirebaseClient testClient;
  late FakeFirebaseFirestore firestore;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    testClient = MockFirebaseClient(firestore: firestore);
    sut = NovaService(client: testClient);
  });

  test('Add Comment is Successful', () async {
    when(() => testClient.setData(collectionName: any(named: 'collectionName'), body: any(named: 'body'))).thenAnswer(
      (_) => Future.value('this is a test'),
    );
    expect(() => sut.addComment(comment: comment), returnsNormally);
  });

  test('getHouseChurches is Successful', () async {
    final collection = firestore.collection('collectionName');
    final doc = collection.doc('docId');
    await doc.set({'leaders': 'me & me', 'name': 'me', 'number': 'mine', 'location': 'here'});
    final snapshot = collection.get();
    when(() => testClient.getData(
          collectionName: any(named: 'collectionName'),
        )).thenAnswer(
      (_) => Future.value(snapshot),
    );
    List<Housechurch> actual = await sut.getHouseChurches();
    List<Housechurch> expected = [housechurch];
    expect(actual[0].leaders, expected[0].leaders);
  });

  test('getLeaders is Successful', () async {
    final collection = firestore.collection('collectionName');
    final doc = collection.doc('docId');
    await doc.set({'leaderName': 'me', 'role': 'leader of things', 'image': 'image.png'});
    final snapshot = collection.get();
    when(() => testClient.getData(
          collectionName: any(named: 'collectionName'),
        )).thenAnswer(
      (_) => Future.value(snapshot),
    );
    List<Leader> actual = await sut.getLeaders();
    List<Leader> expected = [leaders];
    expect(actual[0].leaderName, expected[0].leaderName);
  });

  test('getWorshipDetails is Successful', () async {
    final collection = firestore.collection('collectionName');
    final doc = collection.doc('docId');
    Map<String, dynamic> worshipDetailsToJson = {
      'meetingPlace': 'here',
      'meetingTime': 'now',
      'whatAboutKids': 'none pls',
      'whatAboutMe': 'ur ok',
      'whatToExpect': 'the best',
      'unsure': 'idk man',
    };
    await doc.set(worshipDetailsToJson);
    when(() => testClient.getDoc(collectionName: any(named: 'collectionName'), docId: any(named: 'docId'))).thenAnswer(
      (_) => Future.value(worshipDetailsToJson),
    );
    WorshipDetails? actual = await sut.getWorshipDetails();
    WorshipDetails? expected = worshipDetails;
    expect(actual!.collectionName, expected.collectionName);
  });

  test('getMessage is Successful', () async {
    final collection = firestore.collection('collectionName');
    final doc = collection.doc('docId');
    Map<String, dynamic> messageToJson = {
      'message': 'hello',
      'messageTitle': 'example title',
    };
    await doc.set(messageToJson);
    when(() => testClient.getDoc(collectionName: any(named: 'collectionName'), docId: any(named: 'docId'))).thenAnswer(
      (_) => Future.value(messageToJson),
    );
    Message? actual = await sut.getMessage();
    Message? expected = message;
    expect(actual!.message, expected.message);
  });

  test('getEbulletin is Successful', () async {
    final collection = firestore.collection('collectionName');
    final doc = collection.doc('docId');
    Map<String, dynamic> ebulletinToJson = {
      'link': 'link_example',
    };
    await doc.set(ebulletinToJson);
    when(() => testClient.getDoc(collectionName: any(named: 'collectionName'), docId: any(named: 'docId'))).thenAnswer(
      (_) => Future.value(ebulletinToJson),
    );
    Ebulletin? actual = await sut.getEbulletin();
    Ebulletin? expected = ebulletin;

    expect(actual!.link, expected.link);
  });
}
