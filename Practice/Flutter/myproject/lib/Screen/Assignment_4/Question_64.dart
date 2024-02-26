import 'package:flutter/material.dart';

class MyAlertBoxwithvalue extends StatefulWidget {
  const MyAlertBoxwithvalue({super.key});

  @override
  State<MyAlertBoxwithvalue> createState() => _MyAlertBoxwithvalueState();
}

class _MyAlertBoxwithvalueState extends State<MyAlertBoxwithvalue> {
  //This is a list of major cities of gujarat

  List<String> cityList = [
    "Ahmedabad",
    "Gandhinagar",
    "Surat",
    "Vadodara",
    "Mehsana"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert dialog screen with listview"),
        backgroundColor: Colors.purple,
      ),

      //applying center alignment to our texts and button
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Click here to see list of cities     ----> "),

              //On click event of button an alert dialog will pop up showing list
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          title: Text("Major cities of Gujarat"),
                          content: Container(
                            width: double.minPositive,
                            child: ListView.builder(
                                //applying listview builder to automatically generate list
                                shrinkWrap: true,
                                itemCount: cityList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text(cityList[index]),

                                    //Also we are adding an on tap event for every tile of list to show a detail on another alert dialog box
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            backgroundColor: Colors.purple,
                                            title: Text(
                                              cityList[index],
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            content: Text(
                                              "A city of Gujarat",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                }),
                          ),
                        );
                      },
                    );
                  },
                  child: Text("Tap"))
            ],
          ),
        ),
      ),
    );
  }
}