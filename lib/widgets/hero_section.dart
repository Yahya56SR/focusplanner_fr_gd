import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment:
                isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Text(
                'Master Your Research & \nProductivity with FocusPlanner!',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: isMobile ? TextAlign.center : TextAlign.left,
              ),
              const SizedBox(height: 20),
              Text(
                'AI-powered scheduling, smart task management, and personalized \nacademic insights – designed for postgraduate and doctoral students.',
                textAlign: isMobile ? TextAlign.center : TextAlign.left,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                      padding: WidgetStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                      ),
                    ),
                onPressed: () {},
                child: Column(
                  children: [
                    Text('Sign Up'),
                    Icon(Icons.person_add_alt_1_rounded),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
