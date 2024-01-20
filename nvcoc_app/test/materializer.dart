import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'mocks.dart';

class Materializer extends StatelessWidget {
  final List<Cubit> mockCubits;
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

  List<BlocProvider> buildProviders() => mockCubits.map((mockCubit) => BlocProvider(create: (_) => mockCubit)).toList();
}
