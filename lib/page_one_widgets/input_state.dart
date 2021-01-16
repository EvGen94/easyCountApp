import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/page_one/input_cubit.dart';

class InputLine extends StatelessWidget {
  InputLine({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputCubit, InputState>(
      builder: (context, state) {
        if (state is InputInitial) {
          return Text('InputInitial');
        }
        if (state is Input) {
          return  Text("${state.key}");
        }

        return Text("Not initial");
      },
    );
  }
}
