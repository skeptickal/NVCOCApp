import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/router.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/templates/ebulletin_link.dart';
import 'package:nvcoc_app/templates/housechurches.dart';
import 'package:nvcoc_app/templates/worship_info.dart';
import 'package:provider/provider.dart';

// should I wrap in a multi stream provider somehow? Or should I find a way to seemlessly convert this to blocs/cubits
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(
      providers: [
        StreamProvider<List<Worship>>.value(
          value: DatabaseService().worshipInfo,
          catchError: (context, error) {
            // Handle the error here
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
        StreamProvider<List<HouseChurches>>.value(
          value: DatabaseService().houseChurches,
          catchError: (context, error) {
            // Handle the error here
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
        StreamProvider<List<EBulletin>>.value(
          value: DatabaseService().eBulletinLink,
          catchError: (context, error) {
            // Handle the error here
            print("Error in stream: $error");
            return [];
          },
          initialData: const [],
        ),
        // Add other providers if necessary
      ],
      child: MaterialApp.router(
        routerConfig: router,
      )));
}

//add Materializer? Consider for later, potentially only for bloc and cubit testing
// use java + gradle backend? + practice with REST APIs
// use json placeholder for practice?
