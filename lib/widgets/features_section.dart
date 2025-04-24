import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {'icon': Icons.calendar_today, 'title': 'Smart Scheduling'},
      {'icon': Icons.lightbulb, 'title': 'Focus Mode'},
      {'icon': Icons.notifications, 'title': 'Reminders'},
      {'icon': Icons.folder, 'title': 'Organization'},
      {'icon': Icons.bar_chart, 'title': 'Progress Tracking'},
    ];

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Features', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Wrap(
            spacing: 40,
            runSpacing: 20,
            children: features.map((feature) {
              return Column(
                children: [
                  Icon(feature['icon'] as IconData, size: 40),
                  const SizedBox(height: 10),
                  Text(feature['title'] as String),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
