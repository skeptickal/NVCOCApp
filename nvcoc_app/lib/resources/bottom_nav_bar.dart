import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/resources/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 4.0,
      height: 50,
      backgroundColor: novaBlue,
      destinations: [
        IconButton(
            onPressed: () => context.push('/bible_verse_lookup'),
            icon: const Icon(
              Icons.menu_book,
              color: white,
            )),
        IconButton(
            onPressed: () => context.push('/worship_with_us'),
            icon: const Icon(
              Icons.church,
              color: white,
            )),
        IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(
            Icons.home,
            color: white,
          ),
          iconSize: 40,
        ),
        IconButton(
            onPressed: () => context.push('/calendar'),
            icon: const Icon(
              Icons.calendar_month,
              color: white,
            )),
        IconButton(
            onPressed: () => context.push('/comment_card'),
            icon: const Icon(
              Icons.comment,
              color: white,
            )),
      ],
    );
  }
}
