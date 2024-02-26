import 'package:flutter/material.dart';

Widget MyTextFieldWidget(
    TextEditingController controller,String? hintText) {
  return Container(
      child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: TextField(
      controller: controller,
      style: TextStyle(color: Color.fromARGB(255, 51, 10, 51), fontWeight: FontWeight.bold),
      obscureText: hintText == "Password" ? true : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.deepPurple[300],fontWeight: FontWeight.bold),
        
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 206, 193, 193))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 206, 193, 193))),
      ),
    ),
  ));
}