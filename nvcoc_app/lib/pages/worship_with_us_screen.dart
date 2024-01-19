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
        List<WorshipDetails>? worshipDetails = state.worshipDetails;

        if (worshipDetails == null || worshipDetails.isEmpty) {
          return const Scaffold(
            appBar: NovaAppBar(),
            body: Center(
              child: Text('No worship details available.'),
            ),
          );
        }

        Text meetingPlace = Text(
          worshipDetails[0].meetingPlace,
          style: montserrat,
        );
        Text meetingTime = Text(
          worshipDetails[0].meetingTime,
          style: montserrat,
        );
        Text unsure = Text(
          worshipDetails[0].unsure,
          style: montserrat,
        );
        Text whatAboutKids = Text(
          worshipDetails[0].whatAboutKids,
          style: montserrat,
        );
        Text whatAboutMe = Text(
          worshipDetails[0].whatAboutMe,
          style: montserrat,
        );
        Text whatToExpect = Text(
          worshipDetails[0].whatToExpect,
          style: montserrat,
        );

        return Scaffold(
          appBar: const NovaAppBar(),
          body: ListView(children: [
            Text(
              'CONNECT WITH US',
              style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
            ),
            meetingPlace,
            meetingTime,
            unsure,
            whatAboutKids,
            whatAboutMe,
            whatToExpect,
          ]),
        );
      },
    );
  }
}
