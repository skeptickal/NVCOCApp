import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/housechurchcard.dart';
import 'package:nvcoc_app/templates/housechurches.dart';

class SmallGroupScreen extends StatefulWidget {
  const SmallGroupScreen({super.key});

  @override
  State<SmallGroupScreen> createState() => _SmallGroupScreenState();
}

class _SmallGroupScreenState extends State<SmallGroupScreen> {

List<HouseChurches> houses = [

HouseChurches(name: 'Aldie', leaders: 'Melvin & Tracy Page', location: 'Aldie, VA', number: '571-232-515-'),
HouseChurches(name: 'Ashburn/Brambleton', leaders: 'Grant & Jenny Schneeman', location: 'Ashburn, VA', number: '703-835-4751'),
HouseChurches(name: 'Leesburg', leaders: 'Brian & Denise Fontaine', location: 'Leesburg, VA', number: '703-403-1787'),
HouseChurches(name: 'Chantilly', leaders: 'Ron & Lois Kirkpatrick', location: 'Chantilly, VA', number: '703-401-0884'),
HouseChurches(name: 'Sterling', leaders: 'Edison & Alisa Rolle', location: 'Sterling, VA', number: '703-655-2552'),
HouseChurches(name: 'Centreville/Manassas', leaders: 'Nate & Angie Brooks', location: 'Centreville, Va', number: '703-864-3744'),
HouseChurches(name: 'Centreville West', leaders: 'Matt & Kim Jefson', location: 'Centreville, VA, 22151', number: '701-509-2150'),
HouseChurches(name: 'Centreville North', leaders: 'Damian & Maral Ayala', location: 'Centreville, VA, 22150', number: 'number'),
HouseChurches(name: 'Fairfax', leaders: 'Barry & Pilar Bradshaw', location: 'Fairfax, VA', number: '703-845-7776'),
HouseChurches(name: 'Campus', leaders: 'Angelina Guerra', location: 'George Mason University', number: '559-349-6819'),
HouseChurches(name: 'Young Professionals (North)', leaders: 'Jacob & Haley Teves', location: 'Herndon, VA', number: '703-674-8797'),
HouseChurches(name: 'Young Professionals (West)', leaders: 'Roman Rasiak & Adie Ballantyne', location: 'Vienna, VA', number: '757-903-5037'),
HouseChurches(name: 'Burke/Fairfax (West)', leaders: 'Dan & Sue Fisk', location: '5907 Clermont Landing Ct, Burke, VA', number: '703-577-9092'),
HouseChurches(name: 'Tysons', leaders: 'Reggie & Lea Holmes', location: 'Tysons Corner, VA', number: '703-429-0691'),
HouseChurches(name: 'Burke (South/East)', leaders: 'Eugene & Esther Krofah', location: 'Burke, VA', number: '703-868-3381'),
HouseChurches(name: 'McLean/Herndon/Reston', leaders: 'Jenkin & Wendy Richard', location: 'McLean, VA', number: '202-860-6317'),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 216, 216),
        appBar: const NovaAppBar(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: Icon(
              Icons.chat_bubble,
              color: Color(0xFF04578f),
            )),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF04578f), Colors.white]),
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.yellow,
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
                                  color: Color(0xFF04578f),
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
                                color: Color(0xFF04578f),
                                fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ...houses.map((house) => HouseChurchCard(house: house)),
            ],
          ),
        ));
  }
}


