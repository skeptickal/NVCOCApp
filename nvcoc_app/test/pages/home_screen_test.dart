import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/pages/home_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

class MockFirebaseClient extends Mock implements FirebaseClient {}

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  late MockFirebaseClient testClient;

  group(
    'Home Screen',
    () {
      setUp(() {
        testClient = MockFirebaseClient();
      });
      testWidgets(
        'Nav Cards are Displayed',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          final MockMessageCubit mockMessageCubit = MockMessageCubit();
          when(() => testClient.getDoc(
                collectionName: any(named: 'collectionName'),
                docId: any(named: 'docId'),
              )).thenAnswer(
            (_) => Future.value(),
          );
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockMessageCubit,
            ],
            child: const HomeScreen(),
          ));

          final connectKeyFinder = find.byKey(const Key('connect'));
          expect(connectKeyFinder, findsOneWidget);
          final eventsKeyFinder = find.byKey(const Key('events'));
          expect(eventsKeyFinder, findsOneWidget);
          final learnKeyFinder = find.byKey(const Key('learn'));
          expect(learnKeyFinder, findsOneWidget);
          final beliefsKeyFinder = find.byKey(const Key('beliefs'));
          expect(beliefsKeyFinder, findsOneWidget);
          final missionsKeyFinder = find.byKey(const Key('missions'));
          expect(missionsKeyFinder, findsOneWidget);
          final giveKeyFinder = find.byKey(const Key('give'));
          expect(giveKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
