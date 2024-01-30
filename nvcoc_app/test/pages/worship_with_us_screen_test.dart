import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';
import 'package:nvcoc_app/models/worship_details.dart';
import 'package:nvcoc_app/pages/worship_with_us_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

class MockFirebaseClient extends Mock implements FirebaseClient {}

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  late MockFirebaseClient testClient;
  WorshipDetails worshipDetails = WorshipDetails(
    meetingPlace: 'here',
    meetingTime: 'now',
    whatAboutKids: 'none pls',
    whatAboutMe: 'ur ok',
    whatToExpect: 'the best',
    unsure: 'idk man',
  );

  group(
    'Worship With Us Screen',
    () {
      setUp(() {
        testClient = MockFirebaseClient();
      });
      testWidgets(
        'Meeting Details are Displayed',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          final MockWorshipCubit mockWorshipCubit = MockWorshipCubit();
          when(() => testClient.getDoc(
                collectionName: any(named: 'collectionName'),
                docId: any(named: 'docId'),
              )).thenAnswer(
            (_) => Future.value(),
          );
          when(() => mockWorshipCubit.state).thenReturn(WorshipState(worshipDetails: worshipDetails));
          when(() => mockWorshipCubit.getWorshipDetails()).thenAnswer((_) => Future.value());
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockWorshipCubit,
            ],
            child: const WorshipWithUsScreen(),
          ));

          final meetingPlaceKeyFinder = find.byKey(const Key('meeting_place'));
          expect(meetingPlaceKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
