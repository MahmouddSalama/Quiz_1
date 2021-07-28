import 'package:Quiz_1/main.dart';
import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  @override
 final String _question;

  const Question(this._question);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(12) ,
      child: Text(
        _question,
        style: TextStyle(fontSize: 30 , color: b),
        textAlign: TextAlign.center,
      )
    );
  }
}
