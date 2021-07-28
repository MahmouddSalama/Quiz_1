import 'package:flutter/material.dart';
import 'answer.dart';
import 'quistion.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function AsnswerQuestion;

  Quiz(this.question,this.questionIndex,this.AsnswerQuestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['question']),

        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answers){
          return Answer(()=>AsnswerQuestion( answers['scour']) , answers['text']);
        }).toList(),
      ],
    );
  }
}
