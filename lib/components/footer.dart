import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Theme.of(context).primaryColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FocusPlanner',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Your productivity companion.',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.facebook, color: Colors.white),
                    onPressed: () =>
                        launchURL('https://www.facebook.com/yourprofile'),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.twitter, color: Colors.white),
                    onPressed: () =>
                        launchURL('https://twitter.com/yourprofile'),
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram, color: Colors.white),
                    onPressed: () =>
                        launchURL('https://www.instagram.com/yourprofile'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '© 2025 FocusPlanner. All rights reserved.',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
