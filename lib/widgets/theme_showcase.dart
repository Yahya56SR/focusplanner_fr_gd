import 'package:flutter/material.dart';

class ThemeShowcaseSection extends StatelessWidget {
  const ThemeShowcaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Light & Dark Themes', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/light_theme_preview.png', width: 200),
              const SizedBox(width: 20),
              Image.asset('assets/dark_theme_preview.png', width: 200),
            ],
          ),
          const SizedBox(height: 12),
          const Text('Toggle between themes anytime from the navbar!'),
        ],
      ),
    );
  }
}
