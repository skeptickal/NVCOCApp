import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/belief_screen.dart';
import 'package:nvcoc_app/pages/bible_lookup_screen.dart';
import 'package:nvcoc_app/pages/calendar_screen.dart';
import 'package:nvcoc_app/pages/comment_screen.dart';
import 'package:nvcoc_app/pages/ebullevites_screen.dart';
import 'package:nvcoc_app/pages/give_screen.dart';
import 'package:nvcoc_app/pages/home_screen.dart';
import 'package:nvcoc_app/pages/house_church_screen.dart';
import 'package:nvcoc_app/pages/learn_screen.dart';
import 'package:nvcoc_app/pages/ministries_screen.dart';
import 'package:nvcoc_app/pages/missions_screen.dart';
import 'package:nvcoc_app/pages/worship_with_us_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/ebullevites',
      builder: (BuildContext context, GoRouterState state) {
        return const EBullevitesScreen();
      },
    ),
    GoRoute(
      path: '/worship_with_us',
      builder: (BuildContext context, GoRouterState state) {
        return const WorshipWithUsScreen();
      },
    ),
    GoRoute(
      path: '/housechurches',
      builder: (BuildContext context, GoRouterState state) {
        return const HouseChurchScreen();
      },
    ),
    GoRoute(
      path: '/comment_card',
      builder: (BuildContext context, GoRouterState state) {
        return CommentScreen();
      },
    ),
    GoRoute(
      path: '/calendar',
      builder: (BuildContext context, GoRouterState state) {
        return const CalendarScreen();
      },
    ),
    GoRoute(
      path: '/bible_verse_lookup',
      builder: (BuildContext context, GoRouterState state) {
        return BibleLookupScreen();
      },
    ),
    GoRoute(
      path: '/learn',
      builder: (BuildContext context, GoRouterState state) {
        return const LearnScreen();
      },
    ),
    GoRoute(
      path: '/ministries',
      builder: (BuildContext context, GoRouterState state) {
        return const MinistriesScreen();
      },
    ),
    GoRoute(
      path: '/beliefs',
      builder: (BuildContext context, GoRouterState state) {
        return const BeliefScreen();
      },
    ),
    GoRoute(
      path: '/missions',
      builder: (BuildContext context, GoRouterState state) {
        return const MissionsScreen();
      },
    ),
    GoRoute(
      path: '/give',
      builder: (BuildContext context, GoRouterState state) {
        return const GiveScreen();
      },
    ),
  ],
);
