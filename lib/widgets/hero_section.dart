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
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage('assets/pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: isMobile
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
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
                Row(
                  children: [
                    ElevatedButton(
                      style:
                          Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 16),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.primary,
                                ),
                              ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.person_add_alt_1_rounded,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style:
                          Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(
                                      horizontal: 32, vertical: 16),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Explore Features',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
