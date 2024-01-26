import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/models/housechurch.dart';
import 'package:nvcoc_app/pages/house_church_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  //final MockGoRouter mockGoRouter = MockGoRouter();
  final MockHousechurchCubit mockHousechurchCubit = MockHousechurchCubit();
  Housechurch housechurch = Housechurch(leaders: 'me & me', name: 'me', number: 'mine', location: 'here');

  group(
    'House Church Screen',
    () {
      testWidgets(
        'House Church Cards Visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          when(() => mockHousechurchCubit.state).thenReturn(HousechurchState(houseChurches: [housechurch]));
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
