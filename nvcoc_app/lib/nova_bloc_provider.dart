import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';
import 'package:nvcoc_app/cubits/calendar_cubit/calendar_cubit.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';

import 'package:nvcoc_app/cubits/ebulletin_cubit/ebulletin_cubit.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';

class NovaBlocProvider extends StatelessWidget {
  final Widget child;
  const NovaBlocProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CommentCubit()),
        BlocProvider(create: (context) => HousechurchCubit()),
        BlocProvider(create: (context) => WorshipCubit()),
        BlocProvider(create: (context) => EbulletinCubit()),
        BlocProvider(create: (context) => BibleCubit()),
        BlocProvider(create: (context) => MessageCubit()),
        BlocProvider(create: (context) => LeaderCubit()),
        BlocProvider(create: (context) => CalendarCubit()),
      ],
      child: child,
    );
  }
}
