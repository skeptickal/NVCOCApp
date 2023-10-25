import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nova_state.dart';

class NovaCubit extends Cubit<NovaState> {
  NovaCubit() : super(NovaInitial());
}
