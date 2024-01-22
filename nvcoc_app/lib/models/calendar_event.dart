import 'package:intl/intl.dart';
import 'package:timezone/data/latest.dart';
import 'package:timezone/timezone.dart';

class CalendarEvent {
  final String eventName;
  final String startTime;
  final String endTime;


  CalendarEvent({
    required this.eventName,
    required this.startTime,
    required this.endTime,

  });

  // Initialize the time zone for Eastern Standard Time (New York)
  static const String timeZoneName = 'America/New_York';

  // Add a factory method to create a CalendarEvent from a JSON map
  factory CalendarEvent.fromJson(Map<String, dynamic> json) {
    // Initialize the default time zone
    initializeTimeZones();
    var location = getLocation(timeZoneName);

    // Parse the date strings into DateTime objects
    DateTime startDateTime = DateTime.parse(json['start']['dateTime']).toLocal();
    DateTime endDateTime = DateTime.parse(json['end']['dateTime']).toLocal();

    // Convert DateTime objects to the specified time zone
    TZDateTime startTZDateTime = TZDateTime.from(startDateTime, location);
    TZDateTime endTZDateTime = TZDateTime.from(endDateTime, location);

    // Format the DateTime objects in Eastern Standard Time
    String formattedStartTime = DateFormat('MM-dd-yyyy HH:mm').format(startTZDateTime);
    String formattedEndTime = DateFormat('MM-dd-yyyy HH:mm').format(endTZDateTime);

    return CalendarEvent(
      eventName: json['summary'] ?? 'Event Name N/A',
      startTime: formattedStartTime,
      endTime: formattedEndTime,
    );
  }
}
