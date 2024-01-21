import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/client/bible_query.dart';

part 'bible_state.dart';

class BibleCubit extends Cubit<BibleState> {
  final BibleQuery bibleQuery;
  BibleCubit({BibleQuery? bibleQuery})
      : bibleQuery = bibleQuery ?? BibleQuery(),
        super(const BibleInitial());

  Future<void> searchVerse(String searchTerm) async {
    try {
      final String verseText = await bibleQuery.getPassage(searchTerm);
      emit(state.copyWith(verse: verseText));
    } catch (e) {
      handleError(e);
    }
  }

  void setSelectedBook({required String selectedBook}) {
    emit(state.copyWith(selectedBook: selectedBook));
  }

  void setSelectedVerse({required String selectedVerse}) {
    emit(state.copyWith(selectedVerse: selectedVerse));
  }

  void handleError(dynamic error) {
    const errorMessage = 'Scripture not found, check formatting';
    print('Error searching verse: $error');
    emit(const BibleState(verse: errorMessage));
  }
}
