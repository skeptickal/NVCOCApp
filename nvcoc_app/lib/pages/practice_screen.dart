import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/url_launch_function.dart';
import 'package:nvcoc_app/cubits/calendar_cubit/calendar_cubit.dart';

import '../constants/colors.dart';
import '../constants/screen_wrapper.dart';
import '../constants/spacing.dart';
import '../constants/text_styles.dart';

class Calendar1Screen extends StatelessWidget {
  const Calendar1Screen({Key? key}) : super(key: key);

  final EdgeInsets cardPadding = const EdgeInsets.all(14);

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: _CalendarEventList(),
    );
  }
}

class _CalendarEventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // String selectedCalendarId = '742r4adt4si1qmn52kktb9bfhc@group.calendar.google.com';

    // context.read<CalendarCubit>().fetchCalendarEvents(selectedCalendarId);

    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        List<Widget> calendarEvents = state.events.map(
          (event) {
            return GestureDetector(
              onTap: () => canLaunchUrl('https://www.nvcoc.church/churchcalendar'),
              child: Card(
                margin: cardPadding,
                elevation: 4.0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: novaBlue,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: cardPadding,
                      child: Text(
                        event.eventName,
                        style: montserrat.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: novaBlue),
                      ),
                    ),
                    Padding(
                      padding: cardPadding,
                      child: Text(
                        'Start Time: ${event.startTime}\nEnd Time: ${event.endTime}',
                        style: montserrat.copyWith(color: novaBlue, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ).toList();

        return Column(
          children: [
            Padding(
              padding: cardPadding,
              child: Text(
                key: const Key('calendar_title'),
                'UPCOMING CALENDAR EVENTS',
                style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            _buildDropdownMenu(context),
            Padding(
              padding: cardPadding,
              child: Text(
                'Explore upcoming events and activities. Join us for these '
                'meaningful experiences and connect with the community. For more detailed descriptions or to access links, click the card to be redirected to nvcoc.church \n\nNOTE: This calendar does not include reoccuring events such as: \n\nHouse Church Midweek on the 2nd and 4th Wednesdays of every month \n\nPoor Contribution every 3rd Sunday of the month \n\nWorship Service Every Sunday at 10:30AM',
                style: montserrat.copyWith(color: novaBlue),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: calendarEvents.length,
                itemBuilder: (context, index) {
                  return calendarEvents[index];
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDropdownMenu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Select Calendar: ',
              style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold),
            ),
          ),
          DropdownButton<String>(
            style: montserrat.copyWith(color: black),
            onChanged: (String? newValue) {
              if (newValue != null) {
                context.read<CalendarCubit>().fetchCalendarEvents(newValue);
              }
            },
            items: const [
              DropdownMenuItem<String>(
                value: '8bc06d240310565b37079e7df319542551d2999a1613b86c46d26a56fc42395c@group.calendar.google.com',
                child: Text('Campus'),
              ),
              DropdownMenuItem<String>(
                value: 'novayandf@gmail.com',
                child: Text('Youth and Family'),
              ),
              DropdownMenuItem<String>(
                value: 'kr6nrtdnb65cadv1h1ea3elrs8@group.calendar.google.com',
                child: Text('Mosaic'),
              ),
              DropdownMenuItem<String>(
                value: '742r4adt4si1qmn52kktb9bfhc@group.calendar.google.com',
                child: Text('Church-wide'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
