import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/housechurches.dart';

class HouseChurchCard extends StatelessWidget {
final HouseChurches house;
    const HouseChurchCard({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    
    return Card(
          margin: const EdgeInsets.all(20),
          elevation: 4.0,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.yellow,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                child: Text(
                  house.name,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF04578f),
                      fontSize: 15.0,
                      letterSpacing: 2.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  '${house.leaders}\n\nLocation: ${house.location}\n\n${house.number}',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.normal,
                      letterSpacing: 2.0,
                      color: const Color(0xFF04578f),
                      fontSize: 12.0),
                ),
              ),
            ],
          ),
        );
  }
}
