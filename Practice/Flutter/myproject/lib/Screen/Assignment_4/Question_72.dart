import 'package:flutter/material.dart';

class MyPhoneCall extends StatelessWidget {
  MyPhoneCall({super.key});

  //  this is for showing alert dialog on opening of screen
  Future<void> _showDialog(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Grant Permissions"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Click here ---> "),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Allow access"))
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _showDialog(context),
        builder: (context, snapshot) => Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text(
                "Contact List",
                style: TextStyle(fontSize: 25),
              ),
              elevation: 0,
              backgroundColor: Colors.black,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer__literals_to_create_immutables
              children: [
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 5, fontSize: 25),
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ),
              ],
            )));
  }
}