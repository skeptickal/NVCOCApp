import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/message.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState> {
  final NovaService novaService;

  MessageCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(const MessageInitial());

  Future<void> getMessage() async {
    final Message? message = await novaService.getMessage();
    emit(state.copyWith(message: message));
  }

  void dismissMessage() {
    emit(state.copyWith(message: null));
  }
}
