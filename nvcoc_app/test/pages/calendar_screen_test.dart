import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/pages/calendar_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  final MockMessageCubit mockMessageCubit = MockMessageCubit();

  group(
    'Calendar Screen',
    () {
      setUp(() {});
      testWidgets(
        'Title and Links are Present',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;

          await tester.pumpWidget(Materializer(
            mockCubits: [mockMessageCubit],
            child: const CalendarScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('calendar_title'));
          expect(titleKeyFinder, findsOneWidget);
          final subtitleKeyFinder = find.byKey(const Key('calendar_subtitle'));
          expect(subtitleKeyFinder, findsOneWidget);
          final calendarLinkKeyFinder = find.byKey(const Key('calendar_link'));
          expect(calendarLinkKeyFinder, findsOneWidget);
          final featuredEventsLinkKeyFinder = find.byKey(const Key('featured_events_link'));
          expect(featuredEventsLinkKeyFinder, findsOneWidget);
          final googleSheetsLinkKeyFinder = find.byKey(const Key('google_sheets_link'));
          expect(googleSheetsLinkKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
