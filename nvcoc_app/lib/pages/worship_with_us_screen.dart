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

        Text meetingPlace = Text(
          worshipDetails.meetingPlace,
          style: montserrat,
        );
        Text meetingTime = Text(
          worshipDetails.meetingTime,
          style: montserrat,
        );
        Text unsure = Text(
          worshipDetails.unsure,
          style: montserrat,
        );
        Text whatAboutKids = Text(
          worshipDetails.whatAboutKids,
          style: montserrat,
        );
        Text whatAboutMe = Text(
          worshipDetails.whatAboutMe,
          style: montserrat,
        );
        Text whatToExpect = Text(
          worshipDetails.whatToExpect,
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
