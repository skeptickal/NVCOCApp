import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/comment_screen.dart';
import 'package:nvcoc_app/pages/home_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    //home screens
    // GoRoute(
    //   path: '/realhome',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const RealHomeScreen();
    //   },
    // ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    // //calendar + related subscreens
    // GoRoute(
    //   path: '/calendar',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const CalendarScreen();
    //   },
    // ),
    // //about + related subscreens
    // GoRoute(
    //   path: '/about',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const AboutScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/belief',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const BeliefScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/leaders',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const LeadersScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/who_we_are',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const WhoWeAreScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/worship',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return WorshipScreen();
    //   },
    // ),
    // //give + related sub screens
    // GoRoute(
    //   path: '/give',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const GiveScreen();
    //   },
    // ),
    // //ministries + related sub screens
    // GoRoute(
    //   path: '/ministries',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const MinistriesScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/teens',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const TeensScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/teens2',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const TeensResourceScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/parents',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const ParentsScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/parents2',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const Parents2Screen();
    //   },
    // ),
    // GoRoute(
    //   path: '/parents3',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const Parents3Screen();
    //   },
    // ),
    // GoRoute(
    //   path: '/singles',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SinglesScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/campus',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const CampusScreen();
    //   },
    // ),
    // //learn + related sub screens
    // GoRoute(
    //   path: '/learn',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const LearnScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/resource',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const ResourceScreen();
    //   },
    // ),
    // //connect + related sub screens
    // GoRoute(
    //   path: '/connect',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const ConnectScreen();
    //   },
    // ),
    // GoRoute(
    //   path: '/smallgroups',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SmallGroupScreen();
    //   },
    // ),
    GoRoute(
      path: '/comment_card',
      builder: (BuildContext context, GoRouterState state) {
        return CommentScreen();
      },
    ),
    // GoRoute(
    //   path: '/ebulletin',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const EBulletinScreen();
    //   },
    // ),
  ],
  initialLocation: '/',
);
