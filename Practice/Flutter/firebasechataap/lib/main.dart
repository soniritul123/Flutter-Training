import 'package:firebase_core/firebase_core.dart';
import 'package:firebasechataap/Screen/Loginscreen.dart';
import 'package:firebasechataap/firebase_options.dart';
import 'package:flutter/material.dart';

// flutter pub add firebase_auth
// flutter pub add firebase_core
// flutter pub add cloud_firestore
// flutter pub add firebase_storage


void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MYLoginScreen(),

    );

  }
}