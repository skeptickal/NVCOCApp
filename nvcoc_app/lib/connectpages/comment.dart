import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/navbar.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
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
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFF5c937))),
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'ONLINE COMMENT CARDS',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff04578f),
                          fontSize: 20,
                          letterSpacing: 2.0),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
