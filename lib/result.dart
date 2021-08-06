import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 20) {
      resultText = 'You are awesome and good';
    } else if (resultScore <= 40) {
      resultText = 'You are ok and in Geek';
    } else if (resultScore <= 60) {
      resultText = 'you are is perfect';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.cyan),
          )
        ],
      ),
    );
  }
}
