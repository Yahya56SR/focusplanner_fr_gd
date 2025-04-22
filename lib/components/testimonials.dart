import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        TestimonialCard(
          name: 'John Doe',
          feedback: 'FocusPlanner helped me organize my daily tasks efficiently!',
        ),
        TestimonialCard(
          name: 'Jane Smith',
          feedback: 'A fantastic tool for tracking my productivity and goals.',
        ),
      ],
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String name;
  final String feedback;

  const TestimonialCard({super.key, required this.name, required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '"$feedback"',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            Text(
              '- $name',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
