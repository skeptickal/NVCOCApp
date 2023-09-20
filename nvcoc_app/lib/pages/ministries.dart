import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class MinistriesScreen extends StatefulWidget {
  const MinistriesScreen({super.key});

  @override
  State<MinistriesScreen> createState() => _MinistriesScreenState();
}

class _MinistriesScreenState extends State<MinistriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: Colors.white,
      child: Icon(Icons.chat_bubble, color: Color(0xFF04578f),)
      ),
    );
  }
}
