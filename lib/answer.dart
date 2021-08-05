import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: null,
        style: ElevatedButton.styleFrom(
          primary: Colors.amber[200],
        ),
      ),
    );
  }
}
