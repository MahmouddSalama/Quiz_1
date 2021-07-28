import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final String answerText;
  final Function x;
  Answer(this.x,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
       margin: EdgeInsets.fromLTRB(10,0,10,0),
       child: RaisedButton(
            color: Colors.blue,
            child: Text(answerText,style: TextStyle(color: Colors.white,fontSize: 20 ,),
              textAlign: TextAlign.center,),
            onPressed: x,
        )
    );
  }
}
