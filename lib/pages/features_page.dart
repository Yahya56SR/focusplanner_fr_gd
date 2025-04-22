import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Features')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          FeatureCard(
            title: 'Task Management',
            description: 'Organize and prioritize your tasks effectively.',
            icon: Icons.check_circle_outline,
          ),
          FeatureCard(
            title: 'Time Tracking',
            description: 'Monitor your productivity and time usage.',
            icon: Icons.access_time,
          ),
          FeatureCard(
            title: 'Goals & Reminders',
            description: 'Set personal goals and reminders to stay on track.',
            icon: Icons.notifications_active,
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const FeatureCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(title, style: Theme.of(context).textTheme.headlineMedium),
        subtitle: Text(description, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
