import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/pages/house_church_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  final MockHousechurchCubit mockHousechurchCubit = MockHousechurchCubit();

  group(
    'House Church Screen',
    () {
      testWidgets(
        'House Church Cards Visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          when(() => mockHousechurchCubit.getHouseChurches()).thenAnswer((_) => Future.value());
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockHousechurchCubit,
            ],
            child: const HouseChurchScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('house_church_title'));
          expect(titleKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
