// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

class GiveScreen extends StatefulWidget {
  const GiveScreen({super.key});

  @override
  State<GiveScreen> createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
      floatingActionButton: NovaButton(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF04578f), Colors.white]),
        ),
        child: ListView(children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/online_bill_pay.png'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ONLINE BILL PAY',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      '''Use your bank's own "bill pay" feature:Create a bill payable to NVCOC mailing address: P.O. Box 979, Herndon, VA 20172

In the memo line, indicate: weekly, poor, mission, etc. The bill can be set up as one time or recurring''',
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
          GestureDetector(
            onTap: () => _launchUrl('https://zellepay.com'),
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/zelle.png'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'No Processing Fee, and can set up recurring payments. ',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 180, 0, 0),
                      child: Text(
                        '''You can set Zelle up using the church's email address: admin@nvcoc.org''',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _launchUrl('https://form.jotform.com/72153472250146'),
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/credit.png'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'CREDIT CARD/PAYPAL',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 150, 0, 0),
                      child: Text(
                        '''Give via your personal PayPal account or credit card. Please note this option incurs online processing fees.''',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
