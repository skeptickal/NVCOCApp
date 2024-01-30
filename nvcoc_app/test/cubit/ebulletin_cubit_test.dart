import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/ebulletin_cubit/ebulletin_cubit.dart';
import 'package:nvcoc_app/models/ebulletin.dart';
import '../mocks.dart';

main() {
  Ebulletin ebulletin = Ebulletin(
    link: 'dummyLink',
  );
  group(
    'Ebulletin Cubit Tests',
    () {
      late EbulletinCubit ebulletinCubit;
      late MockNovaService service;

      setUp(() {
        service = MockNovaService();
        ebulletinCubit = EbulletinCubit(novaService: service);
      });

      blocTest(
        'New Ebulletin State Is Retrieved Successfully',
        setUp: () {
          when(() => service.getEbulletin()).thenAnswer(
            (_) => Future.value(ebulletin),
          );
        },
        build: () => ebulletinCubit,
        act: (cubit) async {
          await cubit.getEbulletin();
        },
        expect: () => [
          EbulletinState(ebulletin: ebulletin),
        ],
      );
    },
  );
}
