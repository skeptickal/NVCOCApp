import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubit/nova_cubit.dart';

class NovaBlocProvider extends StatelessWidget {
  final Widget child;
  const NovaBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NovaCubit(),
        ),
      ],
      child: child,
    );
  }
}
