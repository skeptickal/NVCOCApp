import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';
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

  List<BlocProvider<dynamic>> buildProviders() {
    final List<BlocProvider<dynamic>> providers = [];
    for (Cubit cubit in mockCubits) {
      switch (cubit.runtimeType) {
        case MockHousechurchCubit:
          providers.add(BlocProvider<HousechurchCubit>(create: (_) => cubit as HousechurchCubit));
        case MockLeaderCubit:
          providers.add(BlocProvider<LeaderCubit>(create: (_) => cubit as LeaderCubit));
        case MockMessageCubit:
          providers.add(BlocProvider<MessageCubit>(create: (_) => cubit as MessageCubit));
      }
    }
    return providers;
  }
}
