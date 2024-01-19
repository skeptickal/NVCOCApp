import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/worship_cubit/worship_cubit.dart';
import 'package:nvcoc_app/models/worship_details.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class WorshipWithUsScreen extends StatelessWidget {
  const WorshipWithUsScreen({super.key});
  final EdgeInsets cardPadding = const EdgeInsets.all(14);

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

        return Scaffold(
          appBar: const NovaAppBar(),
          body: ListView(children: [
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
            seperation,
            GestureDetector(
              onTap: () => canLaunchUrl('https://www.youtube.com/@NorthernVirginiaChurchofChrist'),
              child: Image(
                image: const AssetImage(
                  'assets/yt.png',
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            meetingTime,
            seperation,
            whatToExpect,
            seperation,
            whatAboutMyKids,
            whatAboutMe,
            unsure,
          ]),
        );
      },
    );
  }
}
