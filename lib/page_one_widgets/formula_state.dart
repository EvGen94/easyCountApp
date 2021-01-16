import 'package:easycount/cubit/page_one/formula_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/page_one/formula_cubit.dart';

class FormulaLine extends StatelessWidget {
  FormulaLine({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormulaCubit, FormulaState>(
      builder: (context, state) {
        if (state is FormulaInitial) {
          return Text('Formula');
        }
        if (state is FormulaG) {
          return Expression(state.listdata);
        }

        return Text("Not initial");
      },
    );
  }

  Widget Expression(List<int> list) {
    String sign;
    if (list[2] == 0) {
      sign = "+";
    } else {
      sign = "-";
    }
    return Text("${list[0]}$sign${list[1]}");
  }
}
