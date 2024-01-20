import 'package:flutter/material.dart';


import '../constants/bars.dart';
import '../constants/colors.dart';
import '../constants/connect_with_us_widgets.dart';
import '../constants/spacing.dart';
import '../constants/sub_titles.dart';
import '../constants/text_styles.dart';
import '../constants/url_launching_widgets.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: ListView(
        children: [
          seperation,
          Center(
            child: Text(
              'BIBLE STUDIES',
              style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
            ),
          ),
          const CustomTextLaunchButton(url: 'https://www.nvcoc.church/new-page-1', title: '(For More Teaching Click Here)'),
          horizontalLine,
          seperation,
          seperation,
          SubTitle(padding: const EdgeInsets.all(14), textStyle: montserrat, subTitleText: 'Downloadable Studies'),
          const ConnectTile(detail: 'Word of God', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/TheWord-Study.pdf'),
          const ConnectTile(detail: 'Discipleship', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Discipleship-Study.pdf'),
          const ConnectTile(detail: 'Sin', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Sin-Study.pdf'),
          const ConnectTile(detail: 'The Cross', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Cross-Study.pdf'),
          const ConnectTile(detail: 'The Medical Account of the Crucifixion', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Medical-Account.pdf'),
          const ConnectTile(detail: 'Repentance', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Repentance-Study.pdf'),
          const ConnectTile(detail: 'Baptism pt.1', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Baptism-1-Study.pdf'),
          const ConnectTile(detail: 'Baptism pt.2', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Baptism-2-Study.pdf'),
          const ConnectTile(detail: 'Church', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Church-Study.pdf'),
          const ConnectTile(detail: 'Counting the Cost', leading: 'SEEKER', url: 'https://www.nvcoc.church/s/Counting_Cost-Study.pdf'),
          const ConnectTile(detail: 'The Book of John pt.1', leading: 'BRING TO FAITH', url: 'https://www.nvcoc.church/s/John-Study-part1.pdf'),
          const ConnectTile(detail: 'The Book of John pt.2', leading: 'BRING TO FAITH', url: 'https://www.nvcoc.church/s/John-Study-part2.pdf'),
          const ConnectTile(detail: 'Seeking God', leading: 'BRING TO FAITH', url: 'https://www.nvcoc.church/s/Seeking_God-Study.pdf'),
          const ConnectTile(detail: 'Evidences for Jesus', leading: 'BRING TO FAITH', url: 'https://www.nvcoc.church/s/Evidences-for-Jesus-Study.pdf'),
          const ConnectTile(detail: 'Who is Jesus?', leading: 'BRING TO FAITH', url: 'https://www.nvcoc.church/s/Who-is-Jesus-study.pdf'),
        ],
      ),
    );
  }
}
