import 'package:flutter/material.dart';

class MYCameraTab extends StatefulWidget {
  const MYCameraTab({super.key});

  @override
  State<MYCameraTab> createState() => _MYCameraTabState();
}

class _MYCameraTabState extends State<MYCameraTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 184, 151, 189),
      child: Center(child: Text("Camera", style: TextStyle(fontSize: 25),)),
    );
  }
  }
