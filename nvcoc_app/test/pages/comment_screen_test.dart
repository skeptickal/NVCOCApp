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
    'Comment Cards Screen',
    () {
      setUp(() {
        testClient = MockFirebaseClient();
      });
      testWidgets(
        'Comment Title and Fields are Displayed',
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

          final titleKeyFinder = find.byKey(const Key('comment_cards_title'));
          expect(titleKeyFinder, findsOneWidget);
          final subtitleKeyFinder = find.byKey(const Key('comment_cards_subtitle'));
          expect(subtitleKeyFinder, findsOneWidget);
          final firstNameKeyFinder = find.byKey(const Key('first_name'));
          expect(firstNameKeyFinder, findsOneWidget);
          final lastNameKeyFinder = find.byKey(const Key('last_name'));
          expect(lastNameKeyFinder, findsOneWidget);
          final emailKeyFinder = find.byKey(const Key('email'));
          expect(emailKeyFinder, findsOneWidget);
          final commentKeyFinder = find.byKey(const Key('comment'));
          expect(commentKeyFinder, findsOneWidget);
          final joinKeyFinder = find.byKey(const Key('join_dropdown'));
          expect(joinKeyFinder, findsOneWidget);
          final iAmKeyFinder = find.byKey(const Key('iAm_dropdown'));
          expect(iAmKeyFinder, findsOneWidget);
          final address1KeyFinder = find.byKey(const Key('address1'));
          expect(address1KeyFinder, findsOneWidget);
          final address2KeyFinder = find.byKey(const Key('address2'));
          expect(address2KeyFinder, findsOneWidget);
          final cityKeyFinder = find.byKey(const Key('city'));
          expect(cityKeyFinder, findsOneWidget);
          final stateKeyFinder = find.byKey(const Key('state'));
          expect(stateKeyFinder, findsOneWidget);
          final zipKeyFinder = find.byKey(const Key('zip'));
          expect(zipKeyFinder, findsOneWidget);
          final phoneKeyFinder = find.byKey(const Key('phone'));
          expect(phoneKeyFinder, findsOneWidget);
          final email1KeyFinder = find.byKey(const Key('email1'));
          expect(email1KeyFinder, findsOneWidget);
          final submitKeyFinder = find.byKey(const Key('submit_button'));
          expect(submitKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
