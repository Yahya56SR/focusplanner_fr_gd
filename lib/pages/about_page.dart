import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Text('About FocusPlanner', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          const Text('FocusPlanner is developed to help students better manage their study schedules and meet academic goals with ease.'),
        ],
      ),
    );
  }
}