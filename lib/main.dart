import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'Green', 'score': 15},
        {'text': 'red', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 20},
        {'text': 'fish', 'score': 20},
        {'text': 'cat', 'score': 20},
        {'text': 'elephant', 'score': 20},
      ]
    },
    {
      'questionText': 'What\'s your favorite programming Language? ',
      'answers': [
        {'text': 'Python', 'score': 20},
        {'text': 'Java', 'score': 20},
        {'text': 'JavaScript', 'score': 20},
        {'text': 'C++', 'score': 20},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more question');
    } else {
      print('Sno more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
