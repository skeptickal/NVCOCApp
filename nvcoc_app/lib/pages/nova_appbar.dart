import 'package:flutter/material.dart';

class NovaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NovaAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/');
      },
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 203, 203, 203),
        title: Image.asset(
          'assets/novalogo.png',
          width: 80,
          height: 80,
        ),
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
