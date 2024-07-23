import 'package:flutter/material.dart';

class MyAnimationExample1 extends StatefulWidget {
  const MyAnimationExample1({super.key});

  @override
  State<MyAnimationExample1> createState() => _MyAnimationExample1State();
}

class _MyAnimationExample1State extends State<MyAnimationExample1> {
  double? containerHeight = 300;
  double? containerWidth = 300;
  Color? colorname = Colors.blue;
  double? radiusValue = 10; 

  void onAnimation() {
    if(containerHeight! > 250){
      setState(() {
        containerHeight = 200;
        containerWidth = 200;
        colorname = Colors.purple;
        radiusValue = 60;
      });
    }
    else{
       setState(() {
        containerHeight = 300;
        containerWidth = 300;
        colorname = Colors.teal;
        radiusValue = 10;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            height: containerHeight,
            width: containerWidth,
            decoration: BoxDecoration(
              color: colorname,
              borderRadius: BorderRadius.circular(radiusValue!)
            ),
            duration: Duration(seconds: 2),
            child: Container(),
            ),
        ElevatedButton(
          onPressed: (){
            onAnimation();
        }, child: Text("Change"))
            
        ],
      ),
    );
  }
}