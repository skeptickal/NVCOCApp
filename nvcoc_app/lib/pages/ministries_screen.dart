import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import 'package:nvcoc_app/cubits/leader_cubit/leader_cubit.dart';

import '../constants/connect_with_us_widgets.dart';
import '../constants/other_widgets.dart';
import '../constants/spacing.dart';

class MinistriesScreen extends StatelessWidget {
  const MinistriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: ListView(
        children: const [
          _MinistryList(),
          _LeaderList(),
        ],
      ),
    );
  }
}

class _LeaderList extends StatelessWidget {
  const _LeaderList();

  @override
  Widget build(BuildContext context) {
    context.read<LeaderCubit>().getLeaders();
    return BlocBuilder<LeaderCubit, LeaderState>(builder: (context, state) {
      List<LeadershipCard> leaders = state.leaders!.map(
        (leader) {
          return LeadershipCard(leaders: leader.leaderName, role: leader.role, image: leader.image);
        },
      ).toList();
      return Column(children: [...leaders]);
    });
  }
}

class _MinistryList extends StatelessWidget {
  const _MinistryList();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(children: [
        seperation,
        const ConnectColumn(
            key: Key('ministries_and_leaders_title'),
            detail: 'Check out our Ministries by clicking their photo, and scroll further to view our leadership team!',
            title: 'MINISTRIES + LEADERSHIP',
            padding: cardPadding),
        const MinistriesBox(
          key: Key('youth_and_family'),
          url: 'https://www.nvcoc.church/youthandfamily',
          image: 'yf.jpeg',
          title: 'YOUTH AND FAMILY MINISTRY',
          fontSize: 23,
        ),
        seperation,
        const MinistriesBox(
          key: Key('campus'),
          url: 'https://www.nvcoc.church/campus',
          image: 'campus1.jpg',
          title: 'CAMPUS',
          fontSize: 50,
        ),
        seperation,
        const MinistriesBox(
          key: Key('mosaic'),
          url: 'https://www.nvcoc.church/mosaic',
          image: 'mosaic.png',
          title: 'MOSAIC',
          fontSize: 50,
        ),
        seperation,
        horizontalLine,
        seperation,
        seperation,
      ]),
    );
  }
}
