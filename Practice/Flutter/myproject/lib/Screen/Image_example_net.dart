import 'package:flutter/material.dart';

class MyImageExampleNet extends StatelessWidget {
  const MyImageExampleNet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example from net"),
      ),
      body: Container(
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEQkzM_Ka4LIMobPIV8HJL5ABTEvlu6XYHbA&usqp=CAU"),
      ),
    );
  }
}