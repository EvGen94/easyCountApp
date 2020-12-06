import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  PageOne({Key key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  List<Widget> listkeys = List<Widget>();
  List<List<Widget>> listOfW = List<List<Widget>>();
  int digit;

  List<Widget> _getButtons(int index) {
    int k = 1;
    for (int i = 0; i < 3; i++) {
      for (int i = 0; i < 3; i++) {
        listkeys.add(_oneKey(k));
        k++;
      }
      listOfW.add(listkeys);
      listkeys = List<Widget>();
    }
    return listOfW[index];
  }

  @override
  void initState() {
    super.initState();
    digit = null;
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
                Text("$digit"),
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
          print("Tap $number!!!!");
          setState(() {
            digit = number;
          });
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
