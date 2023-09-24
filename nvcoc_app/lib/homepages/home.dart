import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/navbar.dart';
import '../templates/nova_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.chat_bubble,
            color: Color(0xFF04578f),
          )),
      drawer: NavBar(),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF04578f), Colors.white]),
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap:() => Navigator.pushNamed(context, '/connect'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/churchmeeting.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CONNECT WITH US',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap:() => Navigator.pushNamed(context, '/calendar'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/calendar.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      'CHECK\nOUT\nOUR\nEVENTS',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      ),
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap:() => Navigator.pushNamed(context, '/learn'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/bible.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(
                        'LEARN WITH US',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ), ]
                    ),
                  ),
                ),
              ),
                GestureDetector(
                onTap:() => Navigator.pushNamed(context, '/belief'),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/beliefs.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'OUR BELIEFS',
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
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
