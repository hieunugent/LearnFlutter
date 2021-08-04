import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color',
      'what\s your favorite animarl '
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
