import 'package:flutter/material.dart';

import 'bars.dart';

class ScreenWrapper extends StatelessWidget{
  final Widget child;

  const ScreenWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: const NovaAppBar(),
      body: child,
    );
  }
}
