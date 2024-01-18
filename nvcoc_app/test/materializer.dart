import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/cubits/comment_cubit.dart';
import 'mocks.dart';

class Materializer extends StatelessWidget {
  final List<CommentCubit> mockCubits;
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

  List<BlocProvider> buildProviders() => mockCubits.map((CommentCubit cubit) => BlocProvider(create: (_) => cubit)).toList();
}
