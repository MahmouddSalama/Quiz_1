import 'package:Quiz_1/answer.dart';
import 'package:Quiz_1/quistion.dart';
import 'package:Quiz_1/quiz.dart';
import 'package:Quiz_1/result.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  int _totalScor = 0;
  int _questionIndex = 0;
  var _deg = [];
  bool isSwitch = false;

  final List<Map<String, Object>> _question = [
    {
      'question': 'What\'s The favorite color ?',
      'answers': [
        {'text': 'Black', 'scour': 10},
        {'text': 'Green', 'scour': 20},
        {'text': 'Blue', 'scour': 30},
        {'text': 'Yellow', 'scour': 40}
      ]
    },
    {
      'question': 'What\'s The favorite animal ?',
      'answers': [
        {'text': 'Dog', 'scour': 10},
        {'text': 'Cat', 'scour': 20},
        {'text': 'Rapit', 'scour': 30},
        {'text': 'Lion', 'scour': 40},
      ]
    },
    {
      'question': 'What\'s The favorite instractorr ?',
      'answers': [
        {'text': 'mahmoud1', 'scour': 10},
        {'text': 'mahmoud2', 'scour': 20},
        {'text': 'mahmoud3', 'scour': 30},
        {'text': 'mahmoud4', 'scour': 40},
      ]
    },
  ];

  void AsnswerQuestion(int scour) {
    //_totalScor+=scour;
    _deg.add(scour);
    setState(() {
      _questionIndex++;
    });
    print(_deg);
  }

  void restartapp() {
    setState(() {
      _questionIndex = 0;
      _totalScor = 0;
      _deg.clear();
    });
  }

  int Total() {
    int sum = 0;
    for (int i = 0; i < _deg.length; i++) {
      sum += _deg[i];
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              activeColor: Colors.black,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.white,
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                    if(isSwitch==false){w = Colors.white;b = Colors.black;}
                    if(isSwitch==true){b = Colors.white;w = Colors.black;}
                  });
                })
          ],
          title: Text(
            'Quiz App', style: TextStyle(color: w),
          ),
        ),
        body: Container(
            color: w,
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, AsnswerQuestion)
                : Result(restartapp, Total())),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back ,color: w,size: 40,),
          onPressed: () {
            // _deg.removeLast();
            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
                _deg.removeLast();
              }
            });
          },
        ),
      ),
    );
  }
}
