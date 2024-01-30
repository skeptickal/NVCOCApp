import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';
import 'package:nvcoc_app/models/message.dart';
import '../mocks.dart';

main() {
  Message message = Message(
    message: 'example message',
    messageTitle: 'example message title',
  );
  group(
    'Message Cubit Tests',
    () {
      late MessageCubit messageCubit;
      late MockNovaService service;

      setUp(() {
        service = MockNovaService();
        messageCubit = MessageCubit(novaService: service);
      });

      blocTest(
        'New Message State Is Retrieved Successfully',
        setUp: () {
          when(() => service.getMessage()).thenAnswer(
            (_) => Future.value(message),
          );
        },
        build: () => messageCubit,
        act: (cubit) async {
          await cubit.getMessage();
        },
        expect: () => [
          MessageState(message: message),
        ],
      );
    },
  );
}
