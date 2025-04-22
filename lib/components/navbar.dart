import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDarkMode;
  final Function toggleTheme;

  const Navbar({Key? key, required this.isDarkMode, required this.toggleTheme})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('FocusPlanner'),
      actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
          onPressed: () => toggleTheme(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0); // Height of the AppBar
}
