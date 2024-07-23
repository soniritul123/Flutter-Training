import 'dart:async';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:firebasechataap/Advance_App_Developmnt/LoginScreen.dart';
import 'package:flutter/material.dart';

class mysplashscreen extends StatefulWidget {
  const mysplashscreen({super.key});

  @override
  State<mysplashscreen> createState() => _mysplashscreenState();
}

class _mysplashscreenState extends State<mysplashscreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3) , ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => LoginScreenShop(),)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/shopping.jpg",fit: BoxFit.cover,height: MediaQuery.of(context).size.height,),
          Positioned.fill(
            child: BlurryContainer(
              blur: 0.2,
              child: Center(child: Padding(
                padding: const EdgeInsets.only(top: 400,left: 190),
                child: Text("The Happy Shopper",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.w800)),
              )),
            )
          )
        ],
      ),
    );
  }
}