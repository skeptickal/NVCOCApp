import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';

import 'mocks.dart';

class Materializer extends StatelessWidget {
  final List<LeaderCubit> mockCubits;
  final MockGoRouter mockGoRouter;
  final Widget child;

  Materializer({
    super.key,
    required this.mockCubits,
    required this.child,
    MockGoRouter? mockGoRouter,
  }) : mockGoRouter = mockGoRouter ?? MockGoRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: buildProviders(),
        child: InheritedGoRouter(
          goRouter: mockGoRouter,
          child: child,
        ),
      ),
    );
  }

  List<BlocProvider> buildProviders() => mockCubits.map((LeaderCubit cubit) => BlocProvider(create: (_) => cubit)).toList();
}
