import 'package:flutter/material.dart';
import 'package:nvcoc_app/pages/nova_appbar.dart';

class BeliefScreen extends StatefulWidget {
  const BeliefScreen({super.key});

  @override
  State<BeliefScreen> createState() => _BeliefScreenState();
}

class _BeliefScreenState extends State<BeliefScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 216, 216),
      appBar: NovaAppBar(),
    );
  }
}
