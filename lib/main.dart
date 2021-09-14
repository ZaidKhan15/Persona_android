import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//This state belong to MyApp that is why we have used <MyApp> in state
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite color?',
      'What\'s your favourite Animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            
            
          ],
        ),
      ),
    );
  }
}
