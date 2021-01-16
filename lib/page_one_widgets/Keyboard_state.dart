import 'package:easycount/cubit/page_one/formula_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/page_one/keyboard_cubit.dart';

import 'widgets/Keyboard.dart';
import 'widgets/Showdialog.dart';

class Keyboard extends StatelessWidget {
  Keyboard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeyboardCubit, KeyboardState>(
      builder: (context, state) {
        if (state is KeyboardInitial) {
          return Column(children: [
            KeyboardDesign(),
            ShowDialog(),
          ]);
        }
        if (state is KeyboardDisp) {
          return KeyboardDesign();
        }

        return Text("Not initial");
      },
    );
  }
}
/*






  @override
  Widget build(BuildContext context) {
    final PageCubit pageCubit = context.watch()<PageCubit>();
    
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
*/
