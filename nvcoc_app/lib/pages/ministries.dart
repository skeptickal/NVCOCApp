import 'package:flutter/material.dart';

class MinistriesScreen extends StatefulWidget {
  const MinistriesScreen({super.key});

  @override
  State<MinistriesScreen> createState() => _MinistriesScreenState();
}

class _MinistriesScreenState extends State<MinistriesScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(

      appBar: AppBar(title: const Text('ministries'),),
    );
  }
}