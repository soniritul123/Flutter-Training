import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetBottomsheet extends StatelessWidget {
  const MyGetBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.bottomSheet(
              Container(
                height: 300,
                child: Wrap(
                  children: [
                    ListTile(
                      onTap: () {
                        print("Clicked");
                      },
                      leading: Icon(Icons.person),
                      title: Text("TITLE"),
                    )
                  ],
                ),
              ),
              enableDrag: true,
              backgroundColor: Colors.deepPurple[200],
            );
          }, child: Text("Open")),
      ),
    );
  }
}