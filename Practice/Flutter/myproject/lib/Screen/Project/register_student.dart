
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostStudent extends StatefulWidget {
  const PostStudent({super.key});

  @override
  State<PostStudent> createState() => _PostStudentState();
}

class _PostStudentState extends State<PostStudent> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController city = TextEditingController();

  Future<void> poststudent1() async {
    final response = await http.post(
        Uri.parse(
            "https://6decflutterapp.000webhostapp.com/register_student.php"),
        body: {
          "username": username.text.toString(),
          "email": email.text.toString(),
          "password": password.text.toString(),
          "city": city.text.toString(),
        });
    if (response.statusCode == 200) {
       Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GetStudent(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(hintText: "Username"),
          ),
          TextField(
            controller: email,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextField(
            controller: password,
            decoration: InputDecoration(hintText: "Password"),
          ),
          TextField(
            controller: city,
            decoration: InputDecoration(hintText: "City"),
          ),
          ElevatedButton(
              onPressed: () {
                poststudent1();
              },
              child: Text("SUBMIT"))
        ],
      ),
    );
  }
}
