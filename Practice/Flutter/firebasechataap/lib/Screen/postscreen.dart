import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebasechataap/Screen/Dashboardscreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';

class MyPostScreen extends StatefulWidget {
  User? user;
  MyPostScreen({required this.user});

  @override
  State<MyPostScreen> createState() => _MyPostScreenState();
}

class _MyPostScreenState extends State<MyPostScreen> {
  TextEditingController _captionController = TextEditingController();
  File? _pic;
  String? _myusername;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  ImagePicker _picker = ImagePicker();
  //var document;
  File? mypic;

  void selectPic() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pic = File(pickedFile.path);
      });
    }
  }

  String? username;

  Future<void> getData() async {
    var document = await FirebaseFirestore.instance
        .collection("Users")
        .doc(widget.user!.uid)
        .get();

    setState(() {
      username = document["name"];
    });
  }

  Future<void> uploadPost() async {
    if (_pic != null) {
      final _storage = await FirebaseStorage.instance;
      final _ref =
          _storage.ref().child("post").child(DateTime.now().toString());

      final uploadImage = _ref.putFile(_pic!);

      final snapshot = await uploadImage.whenComplete(() => null);

      // var dowurl = await snapshot._ref.getDownloadURL();

      var d_imageURL = await snapshot.ref.getDownloadURL();

      User? user = FirebaseAuth.instance.currentUser;

      print(username);
      await FirebaseFirestore.instance
          .collection("MyPost")
          .doc(DateTime.now().toString())
          .set({
        "uid" : widget.user!.uid,
        "username": username.toString(),
        "caption": _captionController.text.toString(),
        "postpic": d_imageURL
      });

      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Dashboard(user: widget.user),
          ));
    } else {
      print("no image found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 162, 205),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                selectPic();
              },
              child: Center(
                child: _pic != null
                    ? Image.file(
                        _pic!,
                        height: 300,
                        width: 300,
                      )
                    : Image.network(
                        "https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg",
                        height: 300,
                        width: 300,
                      ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                controller: _captionController,
                maxLines: 4,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Type your post caption Here",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                uploadPost();
              },
              child: Container(
                color: Colors.blue[300],
                margin: EdgeInsets.only(top: 60),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Upload Post",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
