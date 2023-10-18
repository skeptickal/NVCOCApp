import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NovaButton extends StatefulWidget {
  const NovaButton({super.key});

  @override
  State<NovaButton> createState() => _NovaButtonState();
}

class _NovaButtonState extends State<NovaButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(  onPressed: () {context.go('/comment');},
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.chat_bubble,
              color: Color(0xFF04578f),
            ));
  }
}