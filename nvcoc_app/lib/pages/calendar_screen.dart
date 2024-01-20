import 'package:flutter/material.dart';

import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Column(
          children: [
            seperation,
            Center(
              child: Text(
                'CALENDAR OPTIONS',
                style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
              ),
            ),
            Center(
              child: SubTitle(
                padding: const EdgeInsets.all(14),
                textStyle: montserrat.copyWith(color: novaBlue, fontStyle: FontStyle.italic),
                subTitleText: 'Click any Calendar option below to view our online Calendars',
              ),
            ),
            horizontalLine,
            seperation,
            const CustomTextLaunchButton(
              url: 'https://www.nvcoc.church/churchcalendar',
              title: 'Church Calendar',
            ),
            const CustomTextLaunchButton(
              url: 'https://www.nvcoc.church/featured-events',
              title: 'Featured Events',
            ),
            const CustomTextLaunchButton(
              url: 'https://docs.google.com/spreadsheets/d/1sdPuWX3xtC9JKrvL_UVVMPz56Oh0iDqThtkXHTL6xmo/edit#gid=0',
              title: 'Google Sheet - Year Calendar',
            ),
          ],
        ),
      ),
    );
  }
}
