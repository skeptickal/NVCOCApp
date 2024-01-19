part of 'housechurch_cubit.dart';

@immutable
class HousechurchState extends Equatable {
  final List<Housechurch>? houseChurches;

  const HousechurchState({this.houseChurches});

  HousechurchState copyWith({houseChurches}) {
    return HousechurchState(houseChurches: houseChurches ?? this.houseChurches);
  }

  @override
  List<Object?> get props => [houseChurches];
}

final class HousechurchInitial extends HousechurchState {
  HousechurchInitial() : super(houseChurches: []);
}
