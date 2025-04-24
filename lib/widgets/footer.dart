import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        children: const [
          Text('© 2025 FocusPlanner – All rights reserved'),
          SizedBox(height: 8),
          Text('Terms • Privacy • GitHub'),
        ],
      ),
    );
  }
}
