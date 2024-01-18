part of 'comment_cubit.dart';

@immutable
class CommentState extends Equatable {
  final Comment? comment;
  final String? dropDownValue;
  final String? dropDownValue1;

  @override
  List<Object?> get props => [comment];
  const CommentState({this.comment, this.dropDownValue, this.dropDownValue1});
}

final class NovaInitial extends CommentState {}
