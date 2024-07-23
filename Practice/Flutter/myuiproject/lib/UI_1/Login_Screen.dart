import 'package:flutter/material.dart';
import 'package:myuiproject/UI_1/Home_Screen.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Container(
          child: TextField(
            
            controller: _emailController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Enter you Email",
              labelText: "Email",
              focusColor: Colors.white,
            ),
          ),
        ),
      ),
      Padding(
       padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Container(
          child: TextField(
        
            controller: _passwordController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            hintText: "Enter the Password",
            labelText: "Password",
            focusColor: Colors.white,
            ),
          ),
        ),
      ),

    Padding(
       padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        height: 40,
        width: 100,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange[700],
            //side: BorderSide( width: 3, color: Colors.white),
            //elevation: 20,
            shadowColor: Colors.transparent,
            //shape: CircleBorder()
             ),
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomeScreen()));
          }, child: Text("Login", style: TextStyle(fontSize: 15),),),
      ),
    ),
     ]),
    );
  }
}
