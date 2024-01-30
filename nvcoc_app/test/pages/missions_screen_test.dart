import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/missions_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockMessageCubit mockMessageCubit = MockMessageCubit();

  group(
    'Missions Screen',
    () {
      setUp(() {});
      testWidgets(
        'Missions title and options are visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;

          await tester.pumpWidget(Materializer(
            mockCubits: [mockMessageCubit],
            child: const MissionsScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('missions_title'));
          expect(titleKeyFinder, findsOneWidget);
          final dtKeyFinder = find.byKey(const Key('disciples_today'));
          expect(dtKeyFinder, findsOneWidget);
          final emsKeyFinder = find.byKey(const Key('ems'));
          expect(emsKeyFinder, findsOneWidget);
          final hwwKeyFinder = find.byKey(const Key('hww'));
          expect(hwwKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
