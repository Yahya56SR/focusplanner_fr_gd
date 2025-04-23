import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final Function toggleTheme;

  const Navbar(
      {super.key, required this.isDarkMode, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      title: Text(
        'FocusPlanner',
        style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        GestureDetector(
          child: Container(
            child: Text(
              'Home',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () => toggleTheme(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}
