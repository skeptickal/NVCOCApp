import 'package:flutter/material.dart';
import 'package:nvcoc_app/homepages/home.dart';
import 'package:nvcoc_app/homepages/calendar.dart';
import 'package:nvcoc_app/homepages/about.dart';
import 'package:nvcoc_app/homepages/give.dart';
import 'package:nvcoc_app/homepages/ministries.dart';
import 'package:nvcoc_app/aboutpages/belief.dart';
import 'package:nvcoc_app/aboutpages/who_we_are.dart';
import 'package:nvcoc_app/aboutpages/leaders.dart';
import 'package:nvcoc_app/homepages/realhome.dart';
import 'package:nvcoc_app/homepages/connect.dart';
import 'package:nvcoc_app/homepages/learn.dart';
import 'package:nvcoc_app/connectpages/smallgroups.dart';
import 'package:nvcoc_app/connectpages/comment.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/realhome',
    routes: {
      //home screens
      '/realhome': (context) => RealHomeScreen(),
      '/': (context) => HomeScreen(),
      //calendar + related subscreens
      '/calendar': (context) => CalendarScreen(),
      //about + related subscreens
      '/about': (context) => AboutScreen(),
      '/belief': (context) => BeliefScreen(),
      '/leaders': (context) => LeadersScreen(),
      '/who_we_are': (context) => WhoWeAreScreen(),
      //give + related subscreens
      '/give': (context) => GiveScreen(),
      //ministries + related subscreens
      '/ministries': (context) => MinistriesScreen(),
      //learn + related subscreens
      '/learn': (context) => LearnScreen(),
      //connect + related subscreens
      '/connect': (context) => ConnectScreen(),
      '/smallgroups': (context) => SmallGroupScreen(),
      '/comment': (context) => CommentScreen(),
    },
  ));
}
