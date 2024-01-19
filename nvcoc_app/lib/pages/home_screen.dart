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
            HomeNavCard(image: 'connect.png', route: '/housechurches'),
            HomeNavCard(image: 'events.png', route: '/calendar'),
            HomeNavCard(image: 'learn.png', route: '/learn'),
            HomeNavCard(image: 'beliefs.png', route: '/beliefs'),
            HomeNavCard(image: 'missions.png', route: '/missions'),
            HomeNavCard(image: 'give.png', route: '/give'),
          ],
        ));
  }
}
