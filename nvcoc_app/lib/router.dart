import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/comment_screen.dart';
import 'package:nvcoc_app/pages/ebullevites_screen.dart';
import 'package:nvcoc_app/pages/home_screen.dart';
import 'package:nvcoc_app/pages/house_church_screen.dart';
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
  ],
);
