import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';

import '../constants/colors.dart';
import '../constants/spacing.dart';
import '../constants/sub_titles.dart';
import '../constants/text_styles.dart';
import '../constants/url_launching_widgets.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: Center(
        child: Column(
          children: [
            seperation,
            Center(
              child: Text(
                key: const Key('calendar_title'),
                'CALENDAR OPTIONS',
                style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
              ),
            ),
            Center(
              child: SubTitle(
                key: const Key('calendar_subtitle'),
                padding: const EdgeInsets.all(14),
                textStyle: montserrat.copyWith(color: novaBlue, fontStyle: FontStyle.italic),
                subTitleText: 'Click any Calendar option below to view our online Calendars',
              ),
            ),
            horizontalLine,
            seperation,
            const CustomTextLaunchButton(
              key: Key('calendar_link'),
              url: 'https://www.nvcoc.church/churchcalendar',
              title: 'Church Calendar',
            ),
            const CustomTextLaunchButton(
              key: Key('featured_events_link'),
              url: 'https://www.nvcoc.church/featured-events',
              title: 'Featured Events',
            ),
            const CustomTextLaunchButton(
              key: Key('google_sheets_link'),
              url: 'https://docs.google.com/spreadsheets/d/1sdPuWX3xtC9JKrvL_UVVMPz56Oh0iDqThtkXHTL6xmo/edit#gid=0',
              title: 'Google Sheet - Year Calendar',
            ),
          ],
        ),
      ),
    );
  }
}
