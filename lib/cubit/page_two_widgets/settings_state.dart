import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


//import 'package:material_segmented_control/material_segmented_control.dart';
/*

import './cubit/page_one/formula_cubit.dart';
import './classes/ngenerator.dart';

class PageTwo extends StatelessWidget {
  Generator generator = Generator();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FormulaCubit>(
      create: (BuildContext context) => FormulaCubit(generator),
      child: Switch_data(),
    );
  }
}

class Switch_data extends StatefulWidget {
  @override
  _Switch_dataState createState() => _Switch_dataState();
}

bool val = false;
@override
void initState() {
  val = false;
}

class _Switch_dataState extends State<Switch_data> {
  @override
  Widget build(BuildContext context) {
    final FormulaCubit formulaCubit = BlocProvider.of<FormulaCubit>(context);
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Switch(
            value: val,
            onChanged: (bool value) {
              setState(() {
                val = value;
                formulaCubit.getFormula(2);
              });
            },
          ),
        ],
      ),
    );
  }
}
*/