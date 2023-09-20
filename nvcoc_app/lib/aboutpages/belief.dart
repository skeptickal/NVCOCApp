import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class BeliefScreen extends StatefulWidget {
  const BeliefScreen({super.key});

  @override
  State<BeliefScreen> createState() => _BeliefScreenState();
}

class _BeliefScreenState extends State<BeliefScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 216, 216),
        appBar: const NovaAppBar(),
        floatingActionButton: FloatingActionButton(onPressed: () {
      },
      backgroundColor: Colors.white,
      child: Icon(Icons.chat_bubble, color: Color(0xFF04578f),)
      ),
        body: Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF04578f), Colors.white]),),
          child: ListView(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            'OUR BELIEFS',
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
                          child: Text(
                            'Acts 2:42-47 NIV',
                            style: GoogleFonts.montserrat(
                              letterSpacing: 2.0,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF04578F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'They devoted themselves to the apostles\' teaching and '
                              'to the fellowship, to the breaking of bread and to prayer.'
                              ' Everyone was filled with awe, and many wonders and miraculous'
                              'signs were done by the apostles. All the believers were together '
                              'and had everything in common. Selling their possessions and goods, '
                              'they gave to anyone as he had need. Every day they continued to meet'
                              'together in the temple courts. They broke bread in their homes and ate'
                              'together with glad and sincere hearts, praising God and enjoying the favor'
                              'of all the people. And the Lord added to their number daily those who were'
                              'being saved',
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
                            'HIM',
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
                              'God is the creator of all, who adopts us his children, encourages us as a father, and passionately loves us like a husband. Jesus is not only the son of God, but savior and brother to us. His life teaches us. His death heals us. His resurrection promises us eternal life. The Holy Spirit is the unbound power of God in the form of helper, counselor, and advocate who voices our needs to God on our behalf.',
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
                            'US',
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
                              'We are a group who loves God supremely, '
                              'loves one another deeply, and helps the needy regularly. '
                              'We stand in awe of God when we gather as a large group.'
                              ' We stand in love and service when we gather in house churches. '
                              ' As Christ\'s body on earth, we represent so many different life'
                              'experiences, cultural backgrounds, as well as stages in life. We'
                              'are absolutely a church for everyone.',
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
                            'HIM',
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
                              'God is the creator of all, who adopts us his children, encourages us as a father, and passionately loves us like a husband. Jesus is not only the son of God, but savior and brother to us. His life teaches us. His death heals us. His resurrection promises us eternal life. The Holy Spirit is the unbound power of God in the form of helper, counselor, and advocate who voices our needs to God on our behalf.',
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
                            'YOU',
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
                              'No matter who you are, where you live, or where you are '
                              'spiritually, we welcome you into the community. Whatever '
                              'goals you have or questions to ask spiritually, we want'
                              'to help the Bible become alive and active in your life as'
                              'it has in ours. We want you to experience life to the full,'
                              'overcome the challenges of life, and embrace God\'s purpose '
                              'for your life.',
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
              ],
            ),], 
          ),
        ));
  }
}
