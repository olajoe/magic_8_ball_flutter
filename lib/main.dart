import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  int randomBallNumber(int min, int max) => Random().nextInt(max) + min;
  void updateBallNumber() {
    setState(() {
      ballNumber = randomBallNumber(1, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          updateBallNumber();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
