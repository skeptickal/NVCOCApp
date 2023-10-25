// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final Uri _url = Uri.parse('https://www.nvcoc.church/churchcalendar');
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
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
      floatingActionButton: NovaButton(),
      //floatingActionButton: FloatingActionButton(onPressed: _launchUrl, child: Icon(Icons.calendar_month, color: Color(0xff04578f)), backgroundColor: Colors.white,),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: const [Color(0xFF04578f), Colors.white])),
        child: ListView(children: [
          Card(
            shape:
                RoundedRectangleBorder(side: BorderSide(color: Colors.yellow)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'CALENDAR',
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
              icon: Icon(Icons.calendar_month_outlined),
              label: Text('Online Calendar'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF04578f))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 0, 12),
                child: Text(
                  'Filter Calendars',
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
           padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
            child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: Icon(Icons.menu),
                  style: TextStyle(color: Colors.black),
                  underline: Container(height: 2, color: Colors.white),
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
                backgroundColor: Colors.white,
                cellBorderColor: Color(0xFF04578f),
                onTap: (nvcoc) {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
