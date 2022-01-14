import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
sometimes names of functions,widgets are case sensitive I.e Ball
is accepted by ball is not
 */
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
                'Ask me anything',
                    textAlign: TextAlign.start,
            ),
          ),
          body: Ball(),//first letter case sensitive
        )
      ),
    );

class Ball extends StatefulWidget {


  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed:()
        {
          print('i got clicked');
          setState(() {
            count = Random().nextInt(4)+1;
          });

        },
        child: Image.asset(
            'images/ball$count.png',
            height: 500,
            width:500,


        ),
      ),
    );
  }
}
