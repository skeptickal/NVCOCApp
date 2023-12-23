import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/router.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/templates/ebulletin_link.dart';
import 'package:nvcoc_app/templates/housechurches.dart';
import 'package:nvcoc_app/templates/worship_info.dart';
import 'package:provider/provider.dart';

// should I wrap in a multi stream provider somehow? Or should I find a way to seemlessly convert this to blocs/cubits - DO WITH JEFF?
// wait for Trello cards before further implementation
// go to leadership and what we believe and modularize more/other pages/screens?
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
      providers: [
        StreamProvider<List<Worship>>.value(
          value: DatabaseService().worshipInfo,
          catchError: (context, error) {
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
        StreamProvider<List<HouseChurches>>.value(
          value: DatabaseService().houseChurches,
          catchError: (context, error) {
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
        StreamProvider<List<EBulletin>>.value(
          value: DatabaseService().eBulletinLink,
          catchError: (context, error) {
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      )));
}
