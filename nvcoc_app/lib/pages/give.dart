// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class GiveScreen extends StatefulWidget {
  const GiveScreen({super.key});

  @override
  State<GiveScreen> createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
      backgroundColor: Colors.white,
      child: Icon(Icons.chat_bubble, color: Color(0xFF04578f),)
      ),
    );
  }
}
