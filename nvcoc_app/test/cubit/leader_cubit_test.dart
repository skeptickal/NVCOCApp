import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';
import 'package:nvcoc_app/models/leader.dart';
import '../mocks.dart';

main() {
  Leader leader = Leader(
    leaderName: 'leaderName',
    role: 'role',
    image: 'image',
  );
  group(
    'Leader Cubit Tests',
    () {
      late LeaderCubit leaderCubit;
      late MockNovaService service;

      setUp(() {
        service = MockNovaService();
        leaderCubit = LeaderCubit(novaService: service);
      });

      blocTest(
        'New Leader State Is Retrieved Successfully',
        setUp: () {
          when(() => service.getLeaders()).thenAnswer(
            (_) => Future.value([leader]),
          );
        },
        build: () => leaderCubit,
        act: (cubit) async {
          await cubit.getLeaders();
        },
        expect: () => [
          LeaderState(leaders: [leader]),
        ],
      );
    },
  );
}
