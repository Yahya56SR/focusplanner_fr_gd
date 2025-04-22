import 'package:flutter/material.dart';

class ScreenshotsPage extends StatelessWidget {
  const ScreenshotsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.blue.shade50,
      child: Column(
        children: [
          Text('App Screenshots', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            children: List.generate(3, (index) => Container(
              width: 200,
              height: 400,
              color: Colors.grey.shade300,
              child: Center(child: Text('Screenshot ${index + 1}')),
            )),
          ),
        ],
      ),
    );
  }
}