import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nvcoc_app/client/calendar_query.dart'; // Import your CalendarQuery class

import '../../models/calendar_event.dart'; // Import your CalendarEvent class

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  final CalendarQuery calendarQuery;

  CalendarCubit({CalendarQuery? calendarQuery})
      : calendarQuery = calendarQuery ?? CalendarQuery(),
        super(CalendarInitial());

  Future<void> fetchCalendarEvents(String calendarId) async {
    try {
      final List<CalendarEvent> events = await calendarQuery.fetchDataFromCalendar(calendarId);
      emit(CalendarState(events: events));
    } catch (e) {
      handleError(e);
    }
  }

  void handleError(dynamic error) {
    print('Error fetching calendar events: $error');
    emit(const CalendarState(events: []));
  }
}
