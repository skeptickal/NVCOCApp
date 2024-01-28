import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/belief_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockMessageCubit mockMessageCubit = MockMessageCubit();

  group(
    'Beliefs Screen',
    () {
      setUp(() {});
      testWidgets(
        'Belief Texts and Title are Visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;

          await tester.pumpWidget(Materializer(
            mockCubits: [mockMessageCubit],
            child: const BeliefScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('our_beliefs'));
          expect(titleKeyFinder, findsOneWidget);
          final himKeyFinder = find.byKey(const Key('him_block'));
          expect(himKeyFinder, findsOneWidget);
          final usKeyFinder = find.byKey(const Key('us_block'));
          expect(usKeyFinder, findsOneWidget);
          final youKeyFinder = find.byKey(const Key('you_block'));
          expect(youKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
