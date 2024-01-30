import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/give_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockMessageCubit mockMessageCubit = MockMessageCubit();

  group(
    'Give Screen',
    () {
      setUp(() {});
      testWidgets(
        'Give Title and Options are Visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;

          await tester.pumpWidget(Materializer(
            mockCubits: [mockMessageCubit],
            child: const GiveScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('give_title'));
          expect(titleKeyFinder, findsOneWidget);
          final onlineBillPayKeyFinder = find.byKey(const Key('online_bill_pay'));
          expect(onlineBillPayKeyFinder, findsOneWidget);
          final zelleKeyFinder = find.byKey(const Key('zelle'));
          expect(zelleKeyFinder, findsOneWidget);
          final jotformKeyFinder = find.byKey(const Key('jotform'));
          expect(jotformKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
