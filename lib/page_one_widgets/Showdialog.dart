import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class ShowDialog extends StatefulWidget {
  ShowDialog({Key key}) : super(key: key);

  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
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
                },
                child: Text("I don't know"))
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    // digits = null;
    _showDialog();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
