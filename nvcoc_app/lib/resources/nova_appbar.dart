import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvcoc_app/resources/constants.dart';

class NovaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NovaAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4.0,
      iconTheme: const IconThemeData(color: novaBlue),
      backgroundColor: white,
      title: GestureDetector(
        onTap: () => context.go('/'),
        child: Image.asset(
          'assets/novalogo.png',
          scale: 20,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}