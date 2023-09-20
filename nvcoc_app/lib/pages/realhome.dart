import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class RealHomeScreen extends StatefulWidget {
  const RealHomeScreen({super.key});

  @override
  State<RealHomeScreen> createState() => _RealHomeScreenState();
}

class _RealHomeScreenState extends State<RealHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      body: Stack(
        children: [
          Image.asset(
            'assets/background.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: const Color(0xFF04578f))),
                  child: IconButton(
                    icon: const Icon(Icons.home),
                    iconSize: 60,
                    color: const Color(0xFF04578f),
                    onPressed: () {
                      Navigator.pop(context, '/'); }
                  ),
                ),
                const SizedBox(height: 5),
                Text('Welcome',
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
