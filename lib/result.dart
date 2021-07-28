import 'package:Quiz_1/main.dart';
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final Function x;
  final int totalScour;
  const Result( this.x,this.totalScour );

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text('Done!',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: b)),
          Text('$totalScour',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold , color: b)),
          FlatButton(
              onPressed: x,
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),

              )
          )

        ],
      ),
    );
  }
}
