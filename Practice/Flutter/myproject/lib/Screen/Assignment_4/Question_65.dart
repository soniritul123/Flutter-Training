import "package:flutter/material.dart";

class MyExitButtonAlertdialogbox extends StatefulWidget {
  const MyExitButtonAlertdialogbox({super.key});

  @override
  State<MyExitButtonAlertdialogbox> createState() =>
      _MyExitButtonAlertdialogboxState();
}

class _MyExitButtonAlertdialogboxState
    extends State<MyExitButtonAlertdialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Alert dialog opening on exit button"),
      ),
      body: Center(
        child: Text("Alert Dialog Box"),
      ),

      // this is a f;loating action button where we have added an elevatod button to show logout
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            // we would be opening an alert dialog box on click event of pressing this button
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Are you sure you really want to Logout"),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Yes"),
                      SizedBox(
                        width: 50,
                      ),
                      Text("No")
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Logout")),
    );
  }
}