part of 'calendar_cubit.dart';

@immutable
class CalendarState extends Equatable {
  final List<CalendarEvent> events;

  const CalendarState({required this.events});

  CalendarState copyWith({List<CalendarEvent>? events}) {
    return CalendarState(events: events ?? this.events);
  }

  @override
  List<Object?> get props => [events];
}

class CalendarInitial extends CalendarState {
   CalendarInitial() : super(events: []);
}
