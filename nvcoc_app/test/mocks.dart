import 'package:bloc_test/bloc_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/cubit/comment_cubit.dart';
import 'package:nvcoc_app/service/nova_service.dart';

// Cubits
class MockCommentCubit extends MockCubit<CommentState> implements CommentCubit {}

// Services
class MockTaskService extends Mock implements NovaService {}

// Other
class MockGoRouter extends Mock implements GoRouter {}
