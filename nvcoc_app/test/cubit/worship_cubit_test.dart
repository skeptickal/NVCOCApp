import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';
import 'package:nvcoc_app/models/worship_details.dart';
import '../mocks.dart';

main() {
  WorshipDetails worshipDetails = WorshipDetails(
    meetingPlace: 'meetingPlace',
    meetingTime: 'meetingTime',
    whatAboutKids: 'whatAboutKids',
    whatAboutMe: 'whatAboutMe',
    whatToExpect: 'whatToExpect',
    unsure: 'unsure',
  );
  group(
    'WorshipDetails Cubit Tests',
    () {
      late WorshipCubit worshipCubit;
      late MockNovaService service;

      setUp(() {
        service = MockNovaService();
        worshipCubit = WorshipCubit(novaService: service);
      });

      blocTest(
        'New WorshipDetails State Is Retrieved Successfully',
        setUp: () {
          when(() => service.getWorshipDetails()).thenAnswer(
            (_) => Future.value(worshipDetails),
          );
        },
        build: () => worshipCubit,
        act: (cubit) async {
          await cubit.getWorshipDetails();
        },
        expect: () => [
          WorshipState(worshipDetails: worshipDetails),
        ],
      );
    },
  );
}
