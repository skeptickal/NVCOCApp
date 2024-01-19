import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class MinistriesScreen extends StatelessWidget {
  const MinistriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NovaAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: ListView(children: [
          GestureDetector(
            onTap: () => canLaunchUrl('https://www.nvcoc.church/youthandfamily'),
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/yf.jpeg'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'YOUTH AND FAMILY MINISTRY',
                      style: montserrat.copyWith(fontSize: 23, fontWeight: FontWeight.bold, color: white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => canLaunchUrl('https://www.nvcoc.church/campus'),
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/campus1.jpg'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CAMPUS',
                      style: montserrat.copyWith(fontSize: 50, fontWeight: FontWeight.bold, color: white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => canLaunchUrl('https://www.nvcoc.church/mosaic'),
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/mosaic.png'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'MOSAIC',
                      style: montserrat.copyWith(fontSize: 50, fontWeight: FontWeight.bold, color: white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
