import 'package:flutter/material.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final testimonials = [
      {
        'name': 'Amira L.',
        'role': 'Student',
        'text':
            'FocusPlanner helps me stay organized and never miss a deadline!'
      },
      {
        'name': 'Youssef B.',
        'role': 'Freelancer',
        'text': 'Love the dark mode and clean interface. Highly recommended.'
      },
      {
        'name': 'Sarah T.',
        'role': 'Teacher',
        'text': 'I suggest it to all my students. It makes planning fun!'
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        children: [
          const Text('What Users Say',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: testimonials.map((t) {
              return Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).colorScheme.onSurface,
                        blurRadius: 4)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('"${t['text']}"',
                        style: const TextStyle(fontStyle: FontStyle.italic)),
                    const SizedBox(height: 12),
                    Text('- ${t['name']} (${t['role']})',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
