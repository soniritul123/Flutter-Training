// 77. Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Myurlexample1 extends StatefulWidget {
  const Myurlexample1({super.key});

  @override
  State<Myurlexample1> createState() => _Myurlexample1State();
}

class _Myurlexample1State extends State<Myurlexample1> {
  TextEditingController _urlcontroller = TextEditingController();

  Future<void> myurlLauncher(String? url) async {
    Uri uri = Uri.parse(url!);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("url launcher"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _urlcontroller,
              decoration: InputDecoration(
                labelText: "enter url",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                myurlLauncher(_urlcontroller.text.toString());
              },
              child: Text("LAUNCH URL")),
        ],
      ),
    );
  }
}