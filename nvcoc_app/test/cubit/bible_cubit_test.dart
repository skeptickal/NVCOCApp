import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';
import '../mocks.dart';

main() {
  group(
    'Bible Cubit Tests',
    () {
      late BibleCubit bibleCubit;
      late MockBibleQuery mockBibleQuery;

      setUp(() {
        mockBibleQuery = MockBibleQuery();
        bibleCubit = BibleCubit(bibleQuery: mockBibleQuery);
      });

      blocTest(
        'Search Term returns valid verse',
        setUp: () {
          when(() => mockBibleQuery.getPassage(any())).thenAnswer(
            (_) => Future.value('John 3:16'),
          );
        },
        build: () => bibleCubit,
        act: (cubit) async {
          await cubit.searchVerse('');
        },
        expect: () => [
          const BibleState(verse: 'John 3:16'),
        ],
      );
      blocTest(
        'Search Term Thrown Invalid Exception',
        setUp: () {
          when(() => mockBibleQuery.getPassage(any())).thenThrow(Exception);
        },
        build: () => bibleCubit,
        act: (cubit) async {
          await cubit.searchVerse('');
        },
        expect: () => [
          const BibleState(verse: 'Scripture not found, check formatting'),
        ],
      );
    },
  );
}
