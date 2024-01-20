import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NovaAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: ListView(
          children: [
            seperation,
            const ConnectColumn(
              detail:
                  'The NOVA Church of Christ is not a stand-alone church. We are a part of a larger family of churches called the International Churches of Christ (ICOC). Below you can find the ways we are all connected and some of the worldwide and domestic missions we support.',
              title: 'CHURCH MISSIONS',
              padding: cardPadding,
            ),
            seperation,
            const MinistriesBox(url: 'https://disciplestoday.org/', image: 'dt.png', title: '', fontSize: 0),
            seperation,
            const MinistriesBox(url: 'https://www.euromissions.org/', image: 'ems.png', title: '', fontSize: 0),
            seperation,
            const MinistriesBox(url: 'https://www.hopeww.org/', image: 'hw.png', title: '', fontSize: 0)
          ],
        ));
  }
}
