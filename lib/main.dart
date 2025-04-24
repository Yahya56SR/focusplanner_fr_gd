import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/theme_provider.dart';
import 'widgets/contact_section.dart';
import 'widgets/faq_section.dart';
import 'widgets/features_section.dart';
import 'widgets/footer.dart';
import 'widgets/hero_section.dart';
import 'widgets/navbar.dart';
import 'widgets/testimonials_section.dart';
import 'widgets/theme_showcase.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const FocusPlannerApp(),
    ),
  );
}

class FocusPlannerApp extends StatelessWidget {
  const FocusPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FocusPlanner',
      theme: themeProvider.currentTheme,
      home: Scaffold(
        body: const SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
              HeroSection(),
              FeaturesSection(),
              TestimonialsSection(),
              ThemeShowcaseSection(),
              FAQSection(),
              ContactSection(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
