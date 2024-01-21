import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/leader.dart';

import 'package:nvcoc_app/service/nova_service.dart';

part 'leader_state.dart';

class LeaderCubit extends Cubit<LeaderState> {
  final NovaService novaService;

  LeaderCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(LeaderInitial());

Future<void> getLeaders() async {
    final List<Leader> leaders = await novaService.getLeaders();
    emit(state.copyWith(leaders: [...leaders]));
  }
}
