import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = [
      {'q': 'Is FocusPlanner free?', 'a': 'Yes, FocusPlanner is 100% free to use.'},
      {'q': 'Does it work on mobile?', 'a': 'Yes! It’s optimized for both desktop and mobile devices.'},
      {'q': 'Is my data safe?', 'a': 'Absolutely. We use Firebase to store data securely.'},
    ];

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Frequently Asked Questions', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ...faqs.map((faq) => ExpansionTile(
                title: Text(faq['q']!),
                children: [Padding(padding: const EdgeInsets.all(8.0), child: Text(faq['a']!))],
              )),
        ],
      ),
    );
  }
}
