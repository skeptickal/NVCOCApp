part of 'message_cubit.dart';

@immutable
class MessageState extends Equatable {
  final Message? message;

  const MessageState({this.message});

  MessageState copyWith({message}) {
    return MessageState(message: message ?? this.message);
  }

  @override
  List<Object?> get props => [message];
}

final class MessageInitial extends MessageState {
  const MessageInitial() : super(message: null);
}
