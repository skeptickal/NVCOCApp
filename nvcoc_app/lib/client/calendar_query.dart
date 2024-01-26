import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../models/calendar_event.dart';

class CalendarQuery {
  final String apiKey = 'AIzaSyBSBivKnOUPj9KKMSCbp00PkecpyKm-GNA';

  Future<List<CalendarEvent>> fetchDataFromCalendar(String calendarId) async {
    DateTime now = DateTime.now();
    String formattedNow = now.toUtc().toIso8601String();
    String apiUrl = 'https://www.googleapis.com/calendar/v3/calendars/$calendarId/events?key=$apiKey&timeMin=$formattedNow';

    try {
      var response = await http.get(Uri.parse(apiUrl));
      dynamic data = jsonDecode(response.body);
      print(data);

      if (data.containsKey('items')) {
        List<CalendarEvent> eventsList = [];
        for (var event in data['items']) {
          print(event);
          String startTimeString = event['start']['dateTime'] ?? 'Start Time N/A';

          if (startTimeString != 'Start Time N/A' && (DateTime.parse(startTimeString).isAfter(now) || isEventUpdatedAfterNow(event))) {
            String eventName = event['summary'] ?? 'Event Name N/A';
            print(eventName);
            String endTimeString = event['end']['dateTime'] ?? 'End Time N/A';
            DateTime endTime = DateTime.parse(endTimeString).toLocal();
            String formattedStartTime = DateFormat('MM-dd-yyyy hh:mm a').format(DateTime.parse(startTimeString).toLocal());
            print(formattedStartTime);
            String formattedEndTime = DateFormat('MM-dd-yyyy hh:mm a').format(endTime);
            print(formattedEndTime);

            eventsList.add(
              CalendarEvent(
                eventName: eventName,
                startTime: formattedStartTime,
                endTime: formattedEndTime,
              ),
            );
          }
        }
        eventsList.sort((a, b) => a.startTime.compareTo(b.startTime));
        eventsList = eventsList.take(10).toList();

        return eventsList;
      } else {
        print('No events found.');
        return [];
      }
    } catch (e) {
      print('Error during API request: $e');
      return [];
    }
  }

  bool isEventUpdatedAfterNow(dynamic event) {
    String updatedTimeString = event['updated'] ?? 'Updated Time N/A';
    return updatedTimeString != 'Updated Time N/A' && DateTime.parse(updatedTimeString).isAfter(DateTime.now());
  }
}
