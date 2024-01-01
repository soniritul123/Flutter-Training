import 'package:flutter/material.dart';

class MyQuestion60 extends StatefulWidget {
  const MyQuestion60({super.key, required this.title});
   final String title;

  @override
  State<MyQuestion60> createState() => _MyQuestion60State();
}

class _MyQuestion60State extends State<MyQuestion60> {
  @override
  int _counter = 0;
   void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}