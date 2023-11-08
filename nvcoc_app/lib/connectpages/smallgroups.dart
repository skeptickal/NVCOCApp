import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/housechurch_list.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/housechurches.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:provider/provider.dart';
// ignore: unused_import
import 'package:googleapis/connectors/v1.dart'
    // ignore: undefined_shown_name
    show HouseChurch; // Import only the necessary class

class SmallGroupScreen extends StatefulWidget {
  const SmallGroupScreen({super.key});

  @override
  State<SmallGroupScreen> createState() => _SmallGroupScreenState();
}

class _SmallGroupScreenState extends State<SmallGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<HouseChurches>>.value(
      value: DatabaseService().houseChurches,
      catchError: (context, error) {
        // Handle the error here
        print("Error in stream: $error");
        return [];
      },
      initialData: const [],
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 216, 216),
        appBar: const NovaAppBar(),
        floatingActionButton: const NovaButton(),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [novaBlue, white]),
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin: const EdgeInsets.all(20),
                    elevation: 4.0,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: novaYellow,
                      ),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'FIND A HOUSE CHURCH NEAR YOU',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: novaBlue,
                                  fontSize: 14.0,
                                  letterSpacing: 2.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                          child: Text(
                            'The NOVA Church of Christ believes that you experience what '
                            'we’re all about in community. In order to do that we are '
                            'organized into small groups that we call House Churches. We'
                            ' would love for you to connect with a house church near you '
                            ' and experience the Kingdom of God in community. Check the list '
                            'below for the closest house church and contact information. ',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.normal,
                                letterSpacing: 2.0,
                                color: const Color(0xFF04578f),
                                fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: HouseChurchList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
