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
            TextButton(
              onPressed: () => canLaunchUrl('https://www.nvcoc.church/churchcalendar'),
              child: Text(
                'Church Calendar',
                style: montserrat.copyWith(fontWeight: FontWeight.bold, color: novaBlue),
              ),
            ),
            TextButton(
              onPressed: () => canLaunchUrl('https://www.nvcoc.church/featured-events'),
              child: Text(
                'Featured Events',
                style: montserrat.copyWith(fontWeight: FontWeight.bold, color: novaBlue),
              ),
            ),
            TextButton(
              onPressed: () => canLaunchUrl('https://docs.google.com/spreadsheets/d/1sdPuWX3xtC9JKrvL_UVVMPz56Oh0iDqThtkXHTL6xmo/edit#gid=0'),
              child: Text(
                'Google Sheet - Year Calendar',
                style: montserrat.copyWith(fontWeight: FontWeight.bold, color: novaBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
