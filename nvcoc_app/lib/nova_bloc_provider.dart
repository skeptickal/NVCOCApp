import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';

class NovaBlocProvider extends StatelessWidget {
  final Widget child;
  const NovaBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CommentCubit(),
        ),
        BlocProvider(
          create: (context) => HousechurchCubit(),
        ),
        BlocProvider(
          create: (context) => WorshipCubit(),
        ),
      ],
      child: child,
    );
  }
}
