import 'package:flutter/material.dart';
import 'cubit/Expression_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'expression_panel.dart';

class Page1widget extends StatelessWidget {
  Page1widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageCubit pageCubit = BlocProvider.of<PageCubit>(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //ExpressionPanel(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(1),
              onTap: () => {pageCubit.getPressedKey(1)},
            ),
            GestureDetector(
              child: _oneKey(2),
              onTap: () => {pageCubit.getPressedKey(2)},
            ),
            GestureDetector(
              child: _oneKey(3),
              onTap: () => {pageCubit.getPressedKey(3)},
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(4),
              onTap: () => {pageCubit.getPressedKey(4)},
            ),
            GestureDetector(
              child: _oneKey(5),
              onTap: () => {pageCubit.getPressedKey(5)},
            ),
            GestureDetector(
              child: _oneKey(6),
              onTap: () => {pageCubit.getPressedKey(6)},
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            GestureDetector(
              child: _oneKey(7),
              onTap: () => {pageCubit.getPressedKey(7)},
            ),
            GestureDetector(
              child: _oneKey(8),
              onTap: () => {pageCubit.getPressedKey(8)},
            ),
            GestureDetector(
              child: _oneKey(9),
              onTap: () => {pageCubit.getPressedKey(9)},
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
