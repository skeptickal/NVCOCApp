import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/nova_bloc_provider.dart';
import 'package:nvcoc_app/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(NovaBlocProvider(
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    ),
  ));
}
