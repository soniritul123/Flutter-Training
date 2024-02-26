import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPhonecallApp extends StatefulWidget {
  const MyPhonecallApp({super.key});

  @override
  State<MyPhonecallApp> createState() => _MyPhonecallAppState();
}

class _MyPhonecallAppState extends State<MyPhonecallApp> {
  @override
  List personList = ["Ritul", "Mahendra", "Harsh", "Chaitya"];
  List ContactList = [9554578787, 8752456278, 7894561235, 9576123485];

  Future<void> callApp(String? number) async
  {
    print(number);
    Uri phoneCall = Uri(scheme: "tel", path: number);

      await launchUrl(phoneCall);
  }
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text("PhoneCall"),
     ),
     body: ListView.builder(
      itemCount: personList.length,
      itemBuilder: (context, index){
          return InkWell(
            onTap: () {
              callApp("${ContactList[index]}");
            },
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("${personList[index]}"),
                subtitle: Text("${ContactList[index]}"),
              ),
            ),
          );
     }),
    );
  }
}