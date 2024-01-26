import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nvcoc_app/client/bible_query.dart';
import 'package:nvcoc_app/client/firebase_client.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/cubits/ebulletin_cubit/ebulletin_cubit.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';
import 'package:nvcoc_app/service/nova_service.dart';

// Cubits
class MockCommentCubit extends MockCubit<CommentState> implements CommentCubit {}

class MockHousechurchCubit extends MockCubit<HousechurchState> implements HousechurchCubit {}

class MockEbulletinCubit extends MockCubit<EbulletinState> implements EbulletinCubit {}

class MockBibleCubit extends MockCubit<BibleState> implements BibleCubit {}

class MockWorshipCubit extends MockCubit<WorshipState> implements WorshipCubit {}

class MockMessageCubit extends MockCubit<MessageState> implements MessageCubit {}

class MockLeaderCubit extends MockCubit<LeaderState> implements LeaderCubit {}

// Services
class MockTaskService extends Mock implements NovaService {}

// Other
class MockGoRouter extends Mock implements GoRouter {}

class MockNetworkImage extends Mock implements NetworkImage {}

//client(s)
class MockFirebaseClient extends Mock implements FirebaseClient {}

class MockBibleQuery extends Mock implements BibleQuery {}
