import 'package:flutter/material.dart';
import 'package:focusplanner/pages/home_page.dart';

import 'components/footer.dart';
import 'components/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: Navbar(
          isDarkMode: isDarkMode,
          toggleTheme: toggleTheme,
        ),
        body: HomePage(toggleTheme: toggleTheme, isDarkMode: isDarkMode),
        bottomNavigationBar: Footer(),
      ),
    );
  }
}
