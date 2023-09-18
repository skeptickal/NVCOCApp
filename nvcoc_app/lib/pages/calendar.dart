// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(

      appBar: AppBar(title: Text('calendar'),),
    );
  }
}