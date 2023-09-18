import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'novapages.dart';

class NovaTemplate extends StatelessWidget {

    final NovaScreen screen;
    const NovaTemplate({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => Navigator.pushNamed(context, screen.pagenav),
      child: Card(
        color: Color.fromARGB(255, 226, 226, 226),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              child: Text(
                screen.pagename,
                style: GoogleFonts.montserrat(fontSize: 24.0),
              ),
            ),
            IconButton(
              onPressed: () {
              },
              icon: Image.asset(
                'assets/${screen.pic}',
                width: 70.0,
                height: 70.0,
              ),
              ),
    
          ],
        ),
      ),
    );
  }
}