import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MagicBallPage(),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballAnswerNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() => ballAnswerNumber = Random().nextInt(5) + 1);
          },
          child: Image.asset('images/ball$ballAnswerNumber.png'),
        ),
      ),
    );
  }
}
