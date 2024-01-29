import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/pages/comment_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

class MockFirebaseClient extends Mock implements FirebaseClient {}

void main() {
  late MockFirebaseClient testClient;
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
          final MockCommentCubit mockCommentCubit = MockCommentCubit();
          when(() => testClient.setData(
                collectionName: any(named: 'collectionName'),
                body: 'exampleBody',
              )).thenAnswer(
            (_) => Future.value(),
          );
          when(() => mockCommentCubit.state).thenReturn(CommentState(comment: comment));
          when(() => mockCommentCubit.addComment(comment)).thenAnswer((_) => Future.value());
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockCommentCubit,
            ],
            child: CommentScreen(),
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
