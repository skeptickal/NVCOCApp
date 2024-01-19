import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        backgroundColor: white,
        appBar: const NovaAppBar(),
        body: ListView(
          children: const [
            HomeNavCard(image: 'connect.png', route: '/housechurches', key: Key('connect')),
            HomeNavCard(image: 'events.png', route: '/calendar', key: Key('events')),
            HomeNavCard(image: 'learn.png', route: '/learn', key: Key('learn')),
            HomeNavCard(image: 'beliefs.png', route: '/beliefs', key: Key('beliefs')),
            HomeNavCard(image: 'missions.png', route: '/missions', key: Key('missions')),
            HomeNavCard(image: 'give.png', route: '/give', key: Key('give')),
          ],
        ));
  }
}
