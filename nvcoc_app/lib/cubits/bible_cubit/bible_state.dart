part of 'bible_cubit.dart';

@immutable
class BibleState extends Equatable {
  final String? verse;

  const BibleState({this.verse});

  BibleState copyWith({verse}) {
    return BibleState(verse: verse ?? this.verse);
  }

  @override
  List<Object?> get props => [verse];
}

final class BibleInitial extends BibleState {
  BibleInitial() : super(verse: '');
}
