import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  Future<void> _launchURL() async {
    const url = 'https://github.com/Yahya56SR/Focus-Planner'; // Replace with your download link
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Download')),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: const Text('Download FocusPlanner'),
        ),
      ),
    );
  }
}
