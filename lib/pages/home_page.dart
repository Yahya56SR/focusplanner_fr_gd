import 'package:flutter/material.dart';
import 'package:focusplanner/components/navbar.dart';
import '../components/footer.dart';
import '../components/testimonials.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              color: isDarkMode ? Colors.black : Colors.white,
              child: Text(
                'Welcome to FocusPlanner',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
            ),
            Testimonials(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
