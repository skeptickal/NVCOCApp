part of 'comment_cubit.dart';

@immutable
class CommentState extends Equatable {
  final Comment? comment;
  final String? dropDownValue;
  final String? dropDownValue1;
  final CountryCode? code;

  const CommentState({this.comment, this.dropDownValue, this.dropDownValue1, this.code});

  CommentState copyWith({
    Comment? comment,
    String? dropDownValue,
    String? dropDownValue1,
    CountryCode? code,
  }) {
    return CommentState(
      comment: comment ?? this.comment,
      dropDownValue: dropDownValue ?? this.dropDownValue,
      dropDownValue1: dropDownValue1 ?? this.dropDownValue1,
      code: code ?? this.code,
    );
  }

  @override
  List<Object?> get props => [comment, dropDownValue, dropDownValue1, code];
}

final class NovaInitial extends CommentState {}
