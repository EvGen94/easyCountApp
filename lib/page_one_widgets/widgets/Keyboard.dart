import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/page_one/input_cubit.dart';
import '../../cubit/page_one/timer_cubit.dart';

class KeyboardDesign extends StatelessWidget {
  KeyboardDesign({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputCubit = BlocProvider.of<InputCubit>(context);
    final timerCubit = BlocProvider.of<TimerCubit>(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //ExpressionPanel(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(1),
              onTap: () => {inputCubit.getKey(1),timerCubit.getTick()},
            ),
            GestureDetector(
              child: _oneKey(2),
              onTap: () => {inputCubit.getKey(2),timerCubit.getTick()},
            ),
            GestureDetector(
              child: _oneKey(3),
              onTap: () => {inputCubit.getKey(3),timerCubit.getTick()},
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(4),
              onTap: () => {inputCubit.getKey(4)},
            ),
            GestureDetector(
              child: _oneKey(5),
              onTap: () => {inputCubit.getKey(5)},
            ),
            GestureDetector(
              child: _oneKey(6),
              onTap: () => {inputCubit.getKey(6)},
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(7),
              onTap: () => {inputCubit.getKey(7)},
            ),
            GestureDetector(
              child: _oneKey(8),
              onTap: () => {inputCubit.getKey(8)},
            ),
            GestureDetector(
              child: _oneKey(9),
              onTap: () => {inputCubit.getKey(9)},
            ),
          ]),
        ],
      ),
    );
  }

  Widget _oneKey(int number) {
    return Container(
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
        width: 50,
        height: 50,
        child: Center(
          child: Text("$number"),
        ),
      ),
    );
  }
}
