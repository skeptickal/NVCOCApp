// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/home.dart';
import 'package:nvcoc_app/pages/calendar.dart';
import 'package:nvcoc_app/pages/about.dart';
import 'package:nvcoc_app/pages/give.dart';
import 'package:nvcoc_app/pages/ministries.dart';
import 'package:nvcoc_app/aboutpages/belief.dart';
import 'package:nvcoc_app/aboutpages/who_we_are.dart';
import 'package:nvcoc_app/aboutpages/leaders.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/calendar': (context) => CalendarScreen(),
      '/about': (context) => AboutScreen(),
      '/give': (context) => GiveScreen(),
      '/ministries': (context) => MinistriesScreen(),
      '/belief': (context) => BeliefScreen(),
      '/leaders': (context) => LeadersScreen(),
      '/who_we_are': (context) => WhoWeAreScreen(),
    },
  ));
}
