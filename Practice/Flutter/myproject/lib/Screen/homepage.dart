import "package:flutter/material.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 129, 174, 170),
      appBar : AppBar(
        backgroundColor: Colors.teal,
        title : Text("Whatsapp", 
        style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.settings,)),
           IconButton(onPressed: () {}, icon: Icon(Icons.logout_rounded))
        ],
      ),
      body : Center(child: Text("Hello", 
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.black,),),
    );
  }
}