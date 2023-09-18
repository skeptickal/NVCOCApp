// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GiveScreen extends StatefulWidget {
  const GiveScreen({super.key});

  @override
  State<GiveScreen> createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(

      appBar: AppBar(title: Text('give'),),
    );
  }
}