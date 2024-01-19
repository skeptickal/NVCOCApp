part of 'worship_cubit.dart';

@immutable
class WorshipState extends Equatable {
  final List<WorshipDetails>? worshipDetails;

  const WorshipState({this.worshipDetails});

  WorshipState copyWith({worshipDetails}) {
    return WorshipState(worshipDetails: worshipDetails ?? this.worshipDetails);
  }

  @override
  List<Object?> get props => [worshipDetails];
}

final class WorshipInitial extends WorshipState {
  WorshipInitial() : super(worshipDetails: []);
}
