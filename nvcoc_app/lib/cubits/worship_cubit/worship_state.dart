part of 'worship_cubit.dart';

@immutable
class WorshipState extends Equatable {
  final WorshipDetails? worshipDetails;

  const WorshipState({this.worshipDetails});

  WorshipState copyWith({worshipDetails}) {
    return WorshipState(worshipDetails: worshipDetails ?? this.worshipDetails);
  }

  @override
  List<Object?> get props => [worshipDetails];
}

final class WorshipInitial extends WorshipState {
  WorshipInitial() : super(worshipDetails: WorshipDetails(meetingPlace: '1', meetingTime: '2', unsure: '3', whatAboutKids: '4', whatAboutMe: '5', whatToExpect: '6'));
}
