import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/models/housechurch.dart';
import 'package:nvcoc_app/service/nova_service.dart';

part 'housechurch_state.dart';

class HousechurchCubit extends Cubit<HousechurchState> {
  final NovaService novaService;

  HousechurchCubit({NovaService? novaService})
      : novaService = novaService ?? NovaService(),
        super(HousechurchInitial());

  Future<void> getHouseChurches() async {
    final List<Housechurch> houseChurches = await novaService.getHouseChurches();
    emit(state.copyWith(houseChurches: [...houseChurches]));
  }
}
