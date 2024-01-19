import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/worship_details.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'worship_state.dart';

class WorshipCubit extends Cubit<WorshipState> {
  final NovaService novaService;

  WorshipCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(WorshipInitial());

  Future<void> getWorshipDetails() async {
    final WorshipDetails? worshipDetails = await novaService.getWorshipDetails();
    emit(state.copyWith(worshipDetails: worshipDetails));
  }
}
