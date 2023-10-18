import 'package:flutter/material.dart';
import 'package:nvcoc_app/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';

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
      floatingActionButton: NovaButton(),
    );
  }
}
