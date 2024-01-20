import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/ebulletin.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'ebulletin_state.dart';

class EbulletinCubit extends Cubit<EbulletinState> {
  final NovaService novaService;

  EbulletinCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(EbulletinInitial());

  Future<void> getEbulletin() async {
    final Ebulletin? ebulletin = await novaService.getEbulletin();
    emit(state.copyWith(ebulletin: ebulletin));
  }
}
