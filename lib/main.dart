import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return(
      Scaffold(
        backgroundColor: Colors.blue.shade600,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            textDirection: TextDirection.ltr,
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      )
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset(
            'images/ball$ballNumber.png',
          ),
          onPressed: () {
            randomBallNumber();
          },
        ),
      ),
    );

  }

   void randomBallNumber(){
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
      });
    }

}