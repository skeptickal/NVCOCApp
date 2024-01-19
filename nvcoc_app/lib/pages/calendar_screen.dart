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
            TextButton(
              onPressed: () => canLaunchUrl('https://www.nvcoc.church/churchcalendar'),
              child: const Text('Church Calendar'),
            ),
            TextButton(
              onPressed: () => canLaunchUrl('https://www.nvcoc.church/featured-events'),
              child: const Text('Featured Events'),
            ),
            TextButton(
              onPressed: () => canLaunchUrl('https://docs.google.com/spreadsheets/d/1sdPuWX3xtC9JKrvL_UVVMPz56Oh0iDqThtkXHTL6xmo/edit#gid=0'),
              child: const Text('Google Sheet of Year Calendar'),
            ),
          ],
        ),
      ),
    );
  }
}
