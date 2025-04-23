import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blueGrey[50],
      child: Column(
        children: [
          Text(
            '© 2025 FocusPlanner',
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.twitter),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.instagram),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
