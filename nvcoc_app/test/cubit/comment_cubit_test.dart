import 'package:bloc_test/bloc_test.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/models/comment.dart';
import '../mocks.dart';

main() {
  Comment comment = Comment(
    'collectionName',
    'John',
    'Smith',
    'johnsmith@gmail.com',
    'comment',
    'join',
    'campus',
    'US',
    '1234 Broad St.',
    '123',
    'Washington DC',
    'VA',
    '12345',
    '123-456-7890',
    'johnsmith1@gmail.com',
  );
  group(
    'Comment Cubit Tests',
    () {
      late CommentCubit commentCubit;
      late MockNovaService service;
      CountryCode code = CountryCode(code: 'US');

      setUp(() {
        service = MockNovaService();
        commentCubit = CommentCubit(novaService: service);
      });

      blocTest(
        'No Comment State Is Emitted with Comment Submission',
        setUp: () {
          when(() => service.addComment(comment: comment)).thenAnswer(
            (_) => Future.value(),
          );
        },
        build: () => commentCubit,
        act: (cubit) async {
          await cubit.addComment(comment);
        },
        expect: () => [],
      );
      blocTest(
        'New State Is Emitted Successfully with dropdown values and Country Codes changes',
        setUp: () {},
        build: () => commentCubit,
        act: (cubit) {
          cubit.selectDropdown('dropdown');
          cubit.selectDropdown1('dropdown1');
          cubit.selectCode(code);
        },
        expect: () => [
          const CommentState(
            dropDownValue: 'dropdown',
          ),
          const CommentState(
            dropDownValue: 'dropdown',
            dropDownValue1: 'dropdown1',
          ),
          CommentState(
            dropDownValue: 'dropdown',
            dropDownValue1: 'dropdown1',
            code: code,
          ),
        ],
      );
    },
  );
}
