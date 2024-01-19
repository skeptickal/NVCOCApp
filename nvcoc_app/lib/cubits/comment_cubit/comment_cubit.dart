import 'package:bloc/bloc.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final NovaService novaService;

  CommentCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(CommentInitial());

  Future<void> addComment(Comment comment) async {
    await novaService.addComment(comment: comment);
  }

  void selectDropdown(String dropDown) {
    emit(state.copyWith(dropDownValue: dropDown));
  }

  void selectDropdown1(String dropDown1) {
    emit(state.copyWith(dropDownValue1: dropDown1));
  }

  void selectCode(CountryCode newCode) {
    emit(state.copyWith(code: newCode));
  }
}
