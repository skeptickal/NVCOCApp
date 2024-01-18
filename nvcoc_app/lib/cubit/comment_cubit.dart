import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final NovaService novaService;

  CommentCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(NovaInitial());


  Future<void> addComment(Comment comment) async {
    await novaService.addComment(comment: comment);
  }
}
