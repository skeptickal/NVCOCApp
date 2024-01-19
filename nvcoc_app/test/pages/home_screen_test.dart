import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/home_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  final MockCommentCubit mockCommentCubit = MockCommentCubit();

  group(
    'Home Screen',
    () {
      testWidgets(
        'Nav Cards are Displayed',
        (WidgetTester tester) async {
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockCommentCubit,
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
