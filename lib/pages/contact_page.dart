import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.white,
      child: Column(
        children: [
          Text('Contact', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 10),
          const Text('Email: yourname@example.com'),
          const Text('GitHub: github.com/Yahya56SR/Focus-Planner'),
        ],
      ),
    );
  }
}