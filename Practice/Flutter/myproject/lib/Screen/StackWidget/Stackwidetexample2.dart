import 'package:flutter/material.dart';

class MyStackExample2 extends StatefulWidget {
  const MyStackExample2({super.key});

  @override
  State<MyStackExample2> createState() => _MyStackExample2State();
}

class _MyStackExample2State extends State<MyStackExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRQfKqyDAXHpiwJTZKsUz_ZS6aRksDR42GiQ&usqp=CAU", fit: BoxFit.cover,),
            )),
            Positioned(
              bottom: 10,
              right: 150,
              child: Card(
                color: Color.fromARGB(145,231,244,245),
              child: Center(child: Text("Welcome to Nature App",style: TextStyle(fontSize: 25),)),
            )),
          ],
        ),
      ),
    );
  }
}