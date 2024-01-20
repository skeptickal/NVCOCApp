// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/ebulletin_cubit/ebulletin_cubit.dart';

import 'package:nvcoc_app/models/ebulletin.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class EBullevitesScreen extends StatelessWidget {
  const EBullevitesScreen({super.key});
  final EdgeInsets cardPadding = const EdgeInsets.all(14);

  @override
  Widget build(BuildContext context) {
    context.read<EbulletinCubit>().getEbulletin();
    return BlocBuilder<EbulletinCubit, EbulletinState>(
      builder: (context, state) {
        Ebulletin ebulletin = state.ebulletin!;

        GestureDetector ebulletinClick = GestureDetector(
          onTap: () => canLaunchUrl(ebulletin.link),
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/newsletter.png'),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ' VIEW E-BULLETIN',
                    style: montserrat.copyWith(fontSize: 30, fontWeight: FontWeight.bold, color: white),
                  ),
                ],
              ),
            ),
          ),
        );

        return Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          appBar: const NovaAppBar(),
          body: ListView(
            children: [
              Padding(
                padding: cardPadding,
                child: Center(
                  child: Text(
                    'EBULLETIN & EVITES',
                    style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
                  ),
                ),
              ),
              ebulletinClick,
              const Stack(
                children: [
                  Image(image: AssetImage('assets/church.png')),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ShareIconButtom(
                      iconColor: black,
                      imageName: 'church.png',
                      name: 'Church Evite',
                      jpegOrPng: 'png',
                      subject: 'Invite A Friend',
                    ),
                  ),
                ],
              ),
              const Stack(
                children: [
                  Image(image: AssetImage('assets/churchGrey.png')),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: ShareIconButtom(
                      iconColor: white,
                      imageName: 'churchGrey.png',
                      name: 'Church Evite',
                      jpegOrPng: 'png',
                      subject: 'Invite A Friend',
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
