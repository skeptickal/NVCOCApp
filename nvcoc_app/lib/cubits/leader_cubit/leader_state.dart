part of 'leader_cubit.dart';

@immutable
class LeaderState extends Equatable {
  final List<Leader>? leaders;

  const LeaderState({this.leaders});

  LeaderState copyWith({leaders}) {
    return LeaderState(leaders: leaders ?? this.leaders);
  }

  @override
  List<Object?> get props => [leaders];
}

final class LeaderInitial extends LeaderState {
  LeaderInitial() : super(leaders: []);
}
