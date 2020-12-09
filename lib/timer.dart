import 'dart:async';
import 'package:flutter/material.dart';

class CircleTimer extends StatefulWidget {
  const CircleTimer({Key key}) : super(key: key);

  @override
  _CircleTimerState createState() => _CircleTimerState();
}

class _CircleTimerState extends State<CircleTimer> {
int _counter;
Timer _timer;
  void startTimer() {
    _counter = 10;
   
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$_counter"),
    );
  }
}