import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';
import 'package:nvcoc_app/models/worship_details.dart';

import '../constants/colors.dart';
import '../constants/connect_with_us_widgets.dart';
import '../constants/spacing.dart';
import '../constants/text_styles.dart';
import '../constants/url_launching_widgets.dart';

class WorshipWithUsScreen extends StatelessWidget {
  const WorshipWithUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: _WorshipDetailsWidget(),
    );
  }
}

class _WorshipDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<WorshipCubit>().getWorshipDetails();
    return BlocBuilder<WorshipCubit, WorshipState>(
      builder: (context, state) {
        WorshipDetails worshipDetails = state.worshipDetails!;

        ConnectTile meetingPlace = ConnectTile(
          leading: 'WHERE',
          detail: worshipDetails.meetingPlace,
        );
        ConnectTile meetingTime = ConnectTile(
          leading: 'WHEN',
          detail: worshipDetails.meetingTime,
        );
        ConnectColumn whatToExpect = ConnectColumn(
          detail: worshipDetails.whatToExpect,
          title: 'WHAT TO EXPECT',
          padding: cardPadding,
        );
        ConnectColumn whatAboutMyKids = ConnectColumn(
          detail: worshipDetails.whatAboutKids,
          title: 'WHAT ABOUT MY KIDS?',
          padding: cardPadding,
        );
        ConnectColumn unsure = ConnectColumn(
          detail: worshipDetails.unsure,
          title: 'STILL FEELING UNSURE?',
          padding: cardPadding,
        );
        ConnectColumn whatAboutMe = ConnectColumn(
          detail: worshipDetails.whatAboutMe,
          title: 'WHAT IF I\'M NOT VERY "CHURCHY" OR RELIGIOUS?',
          padding: cardPadding,
        );

        return RefreshIndicator(
          onRefresh: () => context.read<WorshipCubit>().getWorshipDetails(),
          color: novaBlue,
          backgroundColor: white,
          child: ListView(
            children: [
              Padding(
                padding: cardPadding,
                child: Center(
                  child: Text(
                    'CONNECT WITH US',
                    style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
                  ),
                ),
              ),
              meetingPlace,
              meetingTime,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconImageSearch(url: 'https://www.instagram.com/nova.churchofchrist', image: 'insta.png'),
                  IconImageSearch(url: 'https://www.youtube.com/@NorthernVirginiaChurchofChrist', image: 'yt.png'),
                  IconImageSearch(url: 'https://www.facebook.com/NorthernVAChurch/', image: 'fb.png'),
                ],
              ),
              seperation,
              whatToExpect,
              seperation,
              whatAboutMyKids,
              whatAboutMe,
              unsure,
            ],
          ),
        );
      },
    );
  }
}
