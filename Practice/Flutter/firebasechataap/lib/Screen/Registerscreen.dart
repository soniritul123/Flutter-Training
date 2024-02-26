import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasechataap/Custom/mycustombutton.dart';
import 'package:firebasechataap/Custom/mytextfield.dart';
import 'package:firebasechataap/Custom/colorsfile.dart';
import 'package:firebasechataap/Screen/Loginscreen.dart';
import 'package:flutter/material.dart';

class MyRegistrationScreen extends StatefulWidget {
  const MyRegistrationScreen({super.key});

  @override
  State<MyRegistrationScreen> createState() => _MyRegistrationScreenState();
}

class _MyRegistrationScreenState extends State<MyRegistrationScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> registerUser() async {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.toString(), password: _passwordController.text.toString());

      User? user = userCredential.user;

  await FirebaseFirestore.instance.collection("User").doc(user!.uid).set({
    "name": _usernameController.text.toString(),
    "email": _emailController.text.toString(),
    "profilepic": "",
  });
  
  Navigator.pushReplacement(
    context, 
    MaterialPageRoute(builder: (context) => MYLoginScreen())
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 84, 10, 97),
            Color.fromARGB(255, 220, 210, 231),
            Color.fromARGB(255, 47, 9, 65),
          ])),
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Center(
          child: Container(
            height: 500,
            child: Card(
              color: Color.fromRGBO(156, 131, 168, 0.498),
              elevation: 20,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Create An Account",
                        style: TextStyle(fontSize: 36, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextFieldWidget(_usernameController, "Name"),
                    MyTextFieldWidget(_emailController, "Email"),
                    MyTextFieldWidget(
                        _passwordController,"Password"),
                    GestureDetector
                    (
                      onTap: (){
                        registerUser();
                      },
                      child: MyCustomButton("SIGN UP")),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                          onTap: () {
                           
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MYLoginScreen(),
                                ));
                          },
                          child: Text(
                            "Already User ? Click here for login",
                            style: TextStyle(
                                color: DISPLAY_TEXT_COLOR,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
