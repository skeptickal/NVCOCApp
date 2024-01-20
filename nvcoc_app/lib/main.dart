import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/nova_bloc_provider.dart';
import 'package:nvcoc_app/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
<<<<<<< HEAD
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
=======
  runApp(NovaBlocProvider(
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    ),
  ));
>>>>>>> version-2
}
