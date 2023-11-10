// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:googleapis/calendar/v3.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
// ignore: unused_import
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  final Uri _url = Uri.parse('https://www.nvcoc.church/seeker-studies');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  String dropdownValue = 'SELECT ONE';
  void dropDownCallBack(String? selectedValue) {
    if (selectedValue is String) {
      setState(
        () => dropdownValue = selectedValue,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NovaAppBar(),
      floatingActionButton: NovaButton(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const [novaBlue, white])),
        child: ListView(children: [
          Card(
            shape: RoundedRectangleBorder(side: BorderSide(color: novaYellow)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'RESOURCES',
                  style: GoogleFonts.montserrat(
                      color: Color(0xff04578f),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 2.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
            child: ElevatedButton.icon(
              onPressed: _launchUrl,
              icon: Icon(Icons.book_online),
              label: Text('Seeker Studies'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(novaBlue)),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 0, 12),
            child: Text(
              'Filter Calendars',
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropdownValue,
              icon: Icon(Icons.menu),
              style: TextStyle(color: Colors.black),
              underline: Container(height: 2, color: white),
              items: const [
                DropdownMenuItem<String>(
                  value: 'SELECT ONE',
                  child: Text(
                    'SELECT ONE',
                  ),
                ),
                DropdownMenuItem<String>(
                  value: 'Church Wide',
                  child: Text('Church Wide'),
                ),
                DropdownMenuItem<String>(
                  value: 'Campus Ministry',
                  child: Text('Campus Ministry'),
                ),
                DropdownMenuItem<String>(
                  value: 'Single Professionals',
                  child: Text('Single Professionals'),
                ),
                DropdownMenuItem<String>(
                  value: 'Youth and Family',
                  child: Text('Youth and Family'),
                ),
              ],
              onChanged: dropDownCallBack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Color(0xFFF5C937))),
              child: SfCalendar(
                view: CalendarView.timelineMonth,
                backgroundColor: white,
                cellBorderColor: Color(0xFF04578f),
                onTap: (nvcoc) {},
              ),
            ),
          ),*/
        ]),
      ),
    );
  }
}
