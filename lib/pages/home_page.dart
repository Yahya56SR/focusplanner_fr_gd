import 'package:flutter/material.dart';
import 'package:focusplanner/components/navbar.dart';
import 'package:focusplanner/pages/features_page.dart';

class HomePage extends StatelessWidget {
  final Function toggleTheme;
  final bool isDarkMode;

  const HomePage(
      {super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to FocusPlanner!',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          Text(
            'Your productivity starts here.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Navigate to the features page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FeaturesPage()),
              );
            },
            child: const Text('Explore Features'),
          ),
        ],
      ),
    );
  }
}
