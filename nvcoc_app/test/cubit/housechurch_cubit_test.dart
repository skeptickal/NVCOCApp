import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';

import 'package:nvcoc_app/models/housechurch.dart';
import '../mocks.dart';

main() {
  Housechurch housechurch = Housechurch(
    leaders: 'leaders',
    number: 'number',
    location: 'location',
    name: 'name',
  );
  group(
    'Housechurch Cubit Tests',
    () {
      late HousechurchCubit housechurchCubit;
      late MockNovaService service;

      setUp(() {
        service = MockNovaService();
        housechurchCubit = HousechurchCubit(novaService: service);
      });

      blocTest(
        'New Housechurch State Is Retrieved Successfully',
        setUp: () {
          when(() => service.getHouseChurches()).thenAnswer(
            (_) => Future.value([housechurch]),
          );
        },
        build: () => housechurchCubit,
        act: (cubit) async {
          await cubit.getHouseChurches();
        },
        expect: () => [
          HousechurchState(houseChurches: [housechurch]),
        ],
      );
    },
  );
}
