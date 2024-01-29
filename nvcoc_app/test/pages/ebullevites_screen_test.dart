import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/cubits/ebulletin_cubit/ebulletin_cubit.dart';
import 'package:nvcoc_app/models/ebulletin.dart';
import 'package:nvcoc_app/pages/ebullevites_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

class MockFirebaseClient extends Mock implements FirebaseClient {}

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  late MockFirebaseClient testClient;
  Ebulletin ebulletin = Ebulletin(link: 'link_example');

  group(
    'Ebulletin and Evites Screen',
    () {
      setUp(() {
        testClient = MockFirebaseClient();
      });
      testWidgets(
        'Ebulletin and Evites are Displayed',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          final MockEbulletinCubit mockEbulletinCubit = MockEbulletinCubit();
          when(() => testClient.getDoc(
                collectionName: any(named: 'collectionName'),
                docId: any(named: 'docId'),
              )).thenAnswer(
            (_) => Future.value(),
          );
          when(() => mockEbulletinCubit.state).thenReturn(EbulletinState(ebulletin: ebulletin));
          when(() => mockEbulletinCubit.getEbulletin()).thenAnswer((_) => Future.value());
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockEbulletinCubit,
            ],
            child: const EBullevitesScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('ebulletin_title'));
          expect(titleKeyFinder, findsOneWidget);
          final ebulletinKeyFinder = find.byKey(const Key('ebulletin'));
          expect(ebulletinKeyFinder, findsOneWidget);
          final whiteEviteKeyFinder = find.byKey(const Key('churchWhite_evite'));
          expect(whiteEviteKeyFinder, findsOneWidget);
          final greyEviteKeyFinder = find.byKey(const Key('churchGrey_evite'));
          expect(greyEviteKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
