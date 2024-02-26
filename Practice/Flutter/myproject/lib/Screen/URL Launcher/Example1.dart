import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyURLExample1 extends StatefulWidget {
  const MyURLExample1({super.key});

  @override
  State<MyURLExample1> createState() => _MyURLExample1State();
}

class _MyURLExample1State extends State<MyURLExample1> {
  TextEditingController _urlController = TextEditingController();

  Future<void> myUrlLauncher(String? url) async {
    Uri uri= Uri.parse(url!);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _urlController,
              decoration: InputDecoration(labelText: "Enter Url"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                myUrlLauncher(_urlController.text.toString());
              },
              child: Text("Launch URL"))
        ],
      ),
    );
  }
}