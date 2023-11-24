import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';

Widget buildCard(String title, String content) {
  return Card(
    elevation: 4.0,
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: novaYellow),
    ),
    margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              title,
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
                content,
                style: GoogleFonts.montserrat(
                  fontSize: 12.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.italic,
                  color: novaBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
