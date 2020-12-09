import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:convert';
import './timer.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List<Widget> listkeys = List<Widget>();
  List<List<Widget>> listOfW = List<List<Widget>>();
  List digits = List<int>();
  bool visible;
  int k = 0;

  List<Widget> _getButtons(int index) {
    int n = 1;
    for (int i = 0; i < 3; i++) {
      for (int i = 0; i < 3; i++) {
        listkeys.add(_oneKey(n));
        n++;
      }
      listOfW.add(listkeys);
      listkeys = List<Widget>();
    }
    return listOfW[index];
  }

  void _getk() {
    k++;
    if (k > 2) {
      digits.clear();
      k = 0;
    }
  }

  void _showDialog() async {
    await Future.delayed(Duration.zero);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text("START"),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  startTimer();
                },
                child: Text("I don't know"))
          ],
        );
      },
    );
  }

  int _counter;
  Timer _timer;
  void startTimer() {
    _counter = 30;

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
  void initState() {
    super.initState();
    // digits = null;
    visible = false;
    _showDialog();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.2,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("$_counter"),
                Visibility(
                  child: Text("${digits} + ${digits}"),
                  visible: visible,
                ),
                Visibility(
                  child: Text("${digits}"),
                  visible: visible,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(0),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(1),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        ],
      ),
    );
  }

  Widget _oneKey(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            digits.add(number);
            visible = true;
          });
          //_showDialog();
          _getk();
          print("Tap $number!!!!");
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                color: Colors.blueAccent,
                spreadRadius: 5,
                blurRadius: 7,
                //offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            //elevation: 10,
            child: Center(
              child: Text("$number"),
            ),
          ),
        ),
      ),
    );
  }
}
/*
    */
