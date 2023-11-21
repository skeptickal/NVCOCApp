import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp.router(
    routerConfig: router,
  ));
}

//add Materializer? Consider for later, potentially only for bloc and cubit testing
// use java  gradle backend?
