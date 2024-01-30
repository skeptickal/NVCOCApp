part of 'bible_cubit.dart';

@immutable
class BibleState extends Equatable {
  final String? verse;

  const BibleState({this.verse});

  @override
  List<Object?> get props => [verse];
}

final class BibleInitial extends BibleState {
  const BibleInitial() : super(verse: '');
}
