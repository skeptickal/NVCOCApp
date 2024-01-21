part of 'bible_cubit.dart';

@immutable
class BibleState extends Equatable {
  final String? selectedBook;
  final String? selectedVerse;
  final String? verse;

  const BibleState({this.selectedBook, this.selectedVerse, this.verse});

  BibleState copyWith({String? selectedBook, String? selectedVerse, String? verse}) {
    return BibleState(
      selectedBook: selectedBook ?? this.selectedBook,
      selectedVerse: selectedVerse ?? this.selectedVerse,
      verse: verse ?? this.verse,
    );
  }

  @override
  List<Object?> get props => [selectedBook, selectedVerse, verse];
}

final class BibleInitial extends BibleState {
  const BibleInitial()
      : super(
          selectedBook: 'matthew',
          selectedVerse: '11:12',
          verse: '',
        );
}
