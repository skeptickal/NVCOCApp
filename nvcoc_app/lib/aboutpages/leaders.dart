import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class LeadersScreen extends StatefulWidget {
  const LeadersScreen({super.key});

  @override
  State<LeadersScreen> createState() => _LeadersScreenState();
}

class _LeadersScreenState extends State<LeadersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
    );
  }
}
