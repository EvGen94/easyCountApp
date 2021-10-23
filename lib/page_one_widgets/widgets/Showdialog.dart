import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/page_one/formula_cubit.dart';
import '../../cubit/page_one/timer_cubit.dart';

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
                  fprmulacubit.getFormula(false);
                },
                child: Text("I don't know"))
          ],
        );
      },
    );
  }

  @override
  void initState() {
    final FormulaCubit formulaCubit = BlocProvider.of<FormulaCubit>(context);
    // final TimerCubit timerCubit = BlocProvider.of<TimerCubit>(context);

    super.initState();
    // digits = null;
    _showDialog(formulaCubit);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink();
  }
}
