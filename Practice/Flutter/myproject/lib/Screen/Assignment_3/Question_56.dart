import 'package:flutter/material.dart';

class MyQuestion56 extends StatefulWidget {
  const MyQuestion56({super.key});

  @override
  State<MyQuestion56> createState() => _MyQuestion56State();
}

class _MyQuestion56State extends State<MyQuestion56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Around Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnXOu6d8AXdjPaV2s_w81DsjQTvYmoX98Cw&usqp=CAU",fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
                SizedBox(width: 16),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnXOu6d8AXdjPaV2s_w81DsjQTvYmoX98Cw&usqp=CAU",fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Your Text Here',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnXOu6d8AXdjPaV2s_w81DsjQTvYmoX98Cw&usqp=CAU",fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
                SizedBox(width: 16),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZnXOu6d8AXdjPaV2s_w81DsjQTvYmoX98Cw&usqp=CAU",fit: BoxFit.fill,
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}