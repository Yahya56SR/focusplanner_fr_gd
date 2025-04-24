import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Text('Contact Us', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          const TextField(decoration: InputDecoration(labelText: 'Name')),
          const SizedBox(height: 10),
          const TextField(decoration: InputDecoration(labelText: 'Email')),
          const SizedBox(height: 10),
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(labelText: 'Message'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('Send Message')),
        ],
      ),
    );
  }
}
