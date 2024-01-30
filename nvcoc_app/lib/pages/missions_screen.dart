import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';

import '../constants/connect_with_us_widgets.dart';
import '../constants/other_widgets.dart';
import '../constants/spacing.dart';

class MissionsScreen extends StatelessWidget {
  const MissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: ListView(
      children: [
        seperation,
        const ConnectColumn(
          key: Key('missions_title'),
          detail:
              'The NOVA Church of Christ is not a stand-alone church. We are a part of a larger family of churches called the International Churches of Christ (ICOC). Below you can find the ways we are all connected and some of the worldwide and domestic missions we support.',
          title: 'CHURCH MISSIONS',
          padding: cardPadding,
        ),
        seperation,
        const MinistriesBox(url: 'https://disciplestoday.org/', image: 'dt.png', title: '', fontSize: 0, key: Key('disciples_today')),
        seperation,
        const MinistriesBox(url: 'https://www.euromissions.org/', image: 'ems.png', title: '', fontSize: 0, key: Key('ems')),
        seperation,
        const MinistriesBox(url: 'https://www.hopeww.org/', image: 'hw.png', title: '', fontSize: 0, key: Key('hww'))
      ],
    ));
  }
}
