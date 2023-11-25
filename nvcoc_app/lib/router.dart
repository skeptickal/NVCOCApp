import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/connectpages/ebulletin.dart';
import 'package:nvcoc_app/connectpages/worship.dart';
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
import 'package:nvcoc_app/learnpages/resources/resources.dart';
import 'package:nvcoc_app/ministriespages/campus.dart';
import 'package:nvcoc_app/ministriespages/singles.dart';
import 'package:nvcoc_app/ministriespages/teens/parents.dart';
import 'package:nvcoc_app/ministriespages/teens/parents2.dart';
import 'package:nvcoc_app/ministriespages/teens/parents3.dart';
import 'package:nvcoc_app/ministriespages/teens/teens.dart';
import 'package:nvcoc_app/ministriespages/teens/teens_resources.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    //home screens
    GoRoute(
      path: '/realhome',
      builder: (BuildContext context, GoRouterState state) {
        return const RealHomeScreen();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    //calendar + related subscreens
    GoRoute(
      path: '/calendar',
      builder: (BuildContext context, GoRouterState state) {
        return const CalendarScreen();
      },
    ),
    //about + related subscreens
    GoRoute(
      path: '/about',
      builder: (BuildContext context, GoRouterState state) {
        return const AboutScreen();
      },
    ),
    GoRoute(
      path: '/belief',
      builder: (BuildContext context, GoRouterState state) {
        return const BeliefScreen();
      },
    ),
    GoRoute(
      path: '/leaders',
      builder: (BuildContext context, GoRouterState state) {
        return const LeadersScreen();
      },
    ),
    GoRoute(
      path: '/who_we_are',
      builder: (BuildContext context, GoRouterState state) {
        return const WhoWeAreScreen();
      },
    ),
    GoRoute(
      path: '/worship',
      builder: (BuildContext context, GoRouterState state) {
        return WorshipScreen();
      },
    ),
    //give + related sub screens
    GoRoute(
      path: '/give',
      builder: (BuildContext context, GoRouterState state) {
        return const GiveScreen();
      },
    ),
    //ministries + related sub screens
    GoRoute(
      path: '/ministries',
      builder: (BuildContext context, GoRouterState state) {
        return const MinistriesScreen();
      },
    ),
    GoRoute(
      path: '/teens',
      builder: (BuildContext context, GoRouterState state) {
        return const TeensScreen();
      },
    ),
    GoRoute(
      path: '/teens2',
      builder: (BuildContext context, GoRouterState state) {
        return const TeensResourceScreen();
      },
    ),
    GoRoute(
      path: '/parents',
      builder: (BuildContext context, GoRouterState state) {
        return const ParentsScreen();
      },
    ),
    GoRoute(
      path: '/parents2',
      builder: (BuildContext context, GoRouterState state) {
        return const Parents2Screen();
      },
    ),
    GoRoute(
      path: '/parents3',
      builder: (BuildContext context, GoRouterState state) {
        return const Parents3Screen();
      },
    ),
    GoRoute(
      path: '/singles',
      builder: (BuildContext context, GoRouterState state) {
        return const SinglesScreen();
      },
    ),
    GoRoute(
      path: '/campus',
      builder: (BuildContext context, GoRouterState state) {
        return const CampusScreen();
      },
    ),
    //learn + related sub screens
    GoRoute(
      path: '/learn',
      builder: (BuildContext context, GoRouterState state) {
        return const LearnScreen();
      },
    ),
    GoRoute(
      path: '/resource',
      builder: (BuildContext context, GoRouterState state) {
        return const ResourceScreen();
      },
    ),
    //connect + related sub screens
    GoRoute(
      path: '/connect',
      builder: (BuildContext context, GoRouterState state) {
        return const ConnectScreen();
      },
    ),
    GoRoute(
      path: '/smallgroups',
      builder: (BuildContext context, GoRouterState state) {
        return const SmallGroupScreen();
      },
    ),
    GoRoute(
      path: '/comment',
      builder: (BuildContext context, GoRouterState state) {
        return const CommentScreen();
      },
    ),
    GoRoute(
      path: '/ebulletin',
      builder: (BuildContext context, GoRouterState state) {
        return const EBulletinScreen();
      },
    ),
  ],
  initialLocation: '/realhome',
);
