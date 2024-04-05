// 77. Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyphonecallUrl extends StatefulWidget {
  const MyphonecallUrl({super.key});

  @override
  State<MyphonecallUrl> createState() => _MyphonecallUrlState();
}

class _MyphonecallUrlState extends State<MyphonecallUrl> {
  List personlist = ["Ritul", "Rutwa", "chaitya", "abhishek", "Riya"];
  List contectlist = [
    1234335346,
    4564886757457,
    547773545,
    574577477575,
    5745622444,
  ];

  Future<void> callApp(String? number) async {
    print(number);
    Uri phonecall = Uri(scheme: "tel", path: number);
    await launchUrl(phonecall);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Call Url"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: personlist.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              callApp(contectlist[index]);
            },
            child: Card(
              elevation: 20,
              child: ListTile(
                leading: Icon(Icons.person),
                title:Text("${personlist[index]}"),
                subtitle: Text("${contectlist[index]}"),
              ),
            ),
          );
        },
      ),
    );
  }
}