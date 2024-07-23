import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myproject/Offline_Database_Assignment/AddStudent.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, );
    
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddStudentPage(),

      // return GetMaterialApp(
       
      //   home: MyGetXClassExample(),

      //initialRoute: "/",
      //routes: {
       // "/":(context) => MyMainScreen(),
       // "/about" : (context) => AboutScreen()
    
    //  },
    );

  }
}