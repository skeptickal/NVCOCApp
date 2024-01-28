import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';
import 'package:nvcoc_app/pages/bible_lookup_screen.dart';

import '../materializer.dart';
import '../mocks.dart';

void main() {
  late MockBibleQuery testClient;
  String verseNotation = 'John+3:16';
  String verse = 'For God so loved the world that He gave His one and only Son, so that any who believe in Him may have eternal life';

  group(
    'Bible Verse Lookup Screen',
    () {
      setUp(() {
        testClient = MockBibleQuery();
      });
      testWidgets(
        'Titles, Dropdown Menu, Text Form Field, and Search Buttons are visible',
        (WidgetTester tester) async {
          tester.view.physicalSize = const Size(2000, 2000);
          tester.view.devicePixelRatio = 1.0;
          final MockBibleCubit mockBibleCubit = MockBibleCubit();
          when(() => testClient.getPassage(
                verseNotation,
              )).thenAnswer(
            (_) => Future.value(verse),
          );
          when(() => mockBibleCubit.state).thenReturn(BibleState(verse: verse));
          when(() => mockBibleCubit.searchVerse(verseNotation)).thenAnswer((_) => Future.value());
          await tester.pumpWidget(Materializer(
            mockCubits: [
              mockBibleCubit,
            ],
            child: BibleLookupScreen(),
          ));

          final titleKeyFinder = find.byKey(const Key('lookup_title'));
          expect(titleKeyFinder, findsOneWidget);
          final subtitleKeyFinder = find.byKey(const Key('lookup_subtitle'));
          expect(subtitleKeyFinder, findsOneWidget);
          final dropdownKeyFinder = find.byKey(const Key('book_dropdown'));
          expect(dropdownKeyFinder, findsOneWidget);
          final textFieldKeyFinder = find.byKey(const Key('verse_field'));
          expect(textFieldKeyFinder, findsOneWidget);
          final searchButtonKeyFinder = find.byKey(const Key('search_button'));
          expect(searchButtonKeyFinder, findsOneWidget);
        },
      );
    },
  );
}
