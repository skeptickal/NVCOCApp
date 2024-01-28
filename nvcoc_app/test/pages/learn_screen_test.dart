import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/learn_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockMessageCubit mockMessageCubit = MockMessageCubit();

  group(
    'Learn Screen',
    () {
      setUp(() {});
      testWidgets(
        'Bible Study PDF link Widgets are Displayed',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;

          await tester.pumpWidget(Materializer(
            mockCubits: [mockMessageCubit],
            child: const LearnScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('bible_study_title'));
          expect(titleKeyFinder, findsOneWidget);
          final learnKeyFinder = find.byKey(const Key('learn_subtitle'));
          expect(learnKeyFinder, findsOneWidget);

          final wordKeyFinder = find.byKey(const Key('word_study'));
          expect(wordKeyFinder, findsOneWidget);
          final discipleshipKeyFinder = find.byKey(const Key('discipleship_study'));
          expect(discipleshipKeyFinder, findsOneWidget);
          final sinKeyFinder = find.byKey(const Key('sin_study'));
          expect(sinKeyFinder, findsOneWidget);
          final crossKeyFinder = find.byKey(const Key('cross_study'));
          expect(crossKeyFinder, findsOneWidget);
          final medicalKeyFinder = find.byKey(const Key('medical_study'));
          expect(medicalKeyFinder, findsOneWidget);
          final repentanceKeyFinder = find.byKey(const Key('repentance_study'));
          expect(repentanceKeyFinder, findsOneWidget);
          final baptism1KeyFinder = find.byKey(const Key('baptism1_study'));
          expect(baptism1KeyFinder, findsOneWidget);
          final baptism2KeyFinder = find.byKey(const Key('baptism2_study'));
          expect(baptism2KeyFinder, findsOneWidget);
          final churchKeyFinder = find.byKey(const Key('church_study'));
          expect(churchKeyFinder, findsOneWidget);
          final countingTheCostKeyFinder = find.byKey(const Key('counting_the_cost_study'));
          expect(countingTheCostKeyFinder, findsOneWidget);
          final john1KeyFinder = find.byKey(const Key('john1_study'));
          expect(john1KeyFinder, findsOneWidget);
          final john2KeyFinder = find.byKey(const Key('john2_study'));
          expect(john2KeyFinder, findsOneWidget);
          final seekingGodKeyFinder = find.byKey(const Key('seeking_god_study'));
          expect(seekingGodKeyFinder, findsOneWidget);
          final evidencesKeyFinder = find.byKey(const Key('evidences_study'));
          expect(evidencesKeyFinder, findsOneWidget);
          final whoIsJesusKeyFinder = find.byKey(const Key('who_is_jesus_study'));
          expect(whoIsJesusKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
