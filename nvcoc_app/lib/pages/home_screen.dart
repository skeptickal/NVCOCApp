import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: const NovaAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () => context.go('/house_churches'),
              child: const Text('House Churches'),
            ),
            TextButton(
              onPressed: () => context.go('/comment_card'),
              child: const Text('Comment Card'),
            ),
            TextButton(
              onPressed: () => context.go('/worship_with_us'),
              child: const Text('Worship With Us'),
            ),
            TextButton(
              onPressed: () => context.go('/ebulletin'),
              child: const Text('eBulletin'),
            ),
          ],
        ));
  }
}
