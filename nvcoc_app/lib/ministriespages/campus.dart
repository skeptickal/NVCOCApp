import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';

class CampusScreen extends StatefulWidget {
  const CampusScreen({super.key});

  @override
  State<CampusScreen> createState() => _CampusScreenState();
}

class _CampusScreenState extends State<CampusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: const NovaButton(),
      //drawer: NavBar(),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF04578f), Colors.white]),
          ),
          child: ListView(
            children: [
              Card(
                elevation: 4.0,
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFF5c937))),
                margin: const EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          'CAMPUS MINISTRY',
                          style: GoogleFonts.montserrat(
                            fontSize: 22.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF04578F),
                          ),
                        ),
                      ),
                      const SizedBox(height: 2.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            '''The Campus Ministry of the Northern Virginia Church of Christ, also known as "Disciples On Campus", represents campuses throughout multiple schools in the DC/VA area including George Mason, NOVA Community College and Georgetown University. Our vision is to love God with all our hearts, build lifelong relationships and share Jesus' message with others. Our ministry is a place for students to build deep relationships with each other and God, make a difference in the lives of others, and pursue academic excellence. We are devoted to God, His Word, His Church, and His mission to spread the gospel to those willing to hear it. We have meet ups on campus, Fall and Spring retreats with other students from across the east coast, service projects, mission trips local and abroad, and deep friendships focused on spiritual and relational growth. We are always excited to continue growing our family and meeting anyone looking to deepen their relationship with God! 
                            \nFor more information, reach out using our comment card system below, and write in the comment that you would like more info!''',
                            style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              letterSpacing: 2.0,
                              fontStyle: FontStyle.italic,
                              color: const Color(0xFF04578F),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          '',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
