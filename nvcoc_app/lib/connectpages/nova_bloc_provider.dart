import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NovaBlocProvider extends StatelessWidget {
  const NovaBlocProvider({super.key, required this.child});
  
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CommentSubmittedCubit(),
        ),
    
      ],
      child: Container(),
    );
  }
}
