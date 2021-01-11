import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/formula_cubit.dart';

class ShowDialog extends StatefulWidget {
  ShowDialog({Key key}) : super(key: key);

  @override
  _ShowDialogState createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  
  void _showDialog(FormulaCubit fprmulacubit) async {
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
                  fprmulacubit.getFormula();
                },
                child: Text("I don't know"))
          ],
        );
      },
    );
  }

  @override
  void initState() {
    final FormulaCubit fprmulacubit = BlocProvider.of<FormulaCubit>(context);
    super.initState();
    // digits = null;
    _showDialog(fprmulacubit);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
