import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('FocusPlanner',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text('Home')),
              TextButton(onPressed: () {}, child: const Text('Features')),
              TextButton(onPressed: () {}, child: const Text('Testimonials')),
              TextButton(onPressed: () {}, child: const Text('Contact')),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.brightness_6),
                onPressed: () =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
