import 'package:flutter/material.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/build_card.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/worship_info.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class WorshipScreen extends StatelessWidget {
  WorshipScreen({super.key});
  final Uri _url =
      Uri.parse('https://www.youtube.com/@NorthernVirginiaChurchofChrist');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could Not Launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Worship> worshipInfo = context.watch<List<Worship>>();
    return StreamProvider<List<Worship>>.value(
        value: DatabaseService().worshipInfo,
        catchError: (context, error) {
          // Handle the error here
          print("Error in stream: $error");
          return [];
        },
        initialData: const [],
        child: Scaffold(
          appBar: NovaAppBar(),
          floatingActionButton: NovaButton(),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [novaBlue, Colors.white]),
            ),
            child: ListView.builder(
              itemCount: worshipInfo.length,
              itemBuilder: (context, index) {
                Worship worship = worshipInfo[index];

                // Use the worship parameters as needed
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildCard('WHERE WE MEET',
                        '${worship.meetingPlace}, ${worship.meetingTime}'),
                    buildCard('LIVE STREAM', 'We also meet online at 10:30AM'),
                    buildCard('WHAT TO EXPECT', worship.whatToExpect),
                    buildCard('WHAT ABOUT MY KIDS', worship.whatAboutKids),
                    buildCard('WHAT IF I AM NOT VERY CHURCHY OR RELIGIOUS?',
                        worship.whatAboutMe),
                    buildCard('STILL FEELING UNSURE?', worship.unsure),
                    const SizedBox(height: 40),
                  ],
                );
              },
            ),
          ),
        ));
  }
}
