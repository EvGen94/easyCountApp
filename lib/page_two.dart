import 'package:easycount/classes/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:easycount/classes/timer.dart';

import './cubit/page_two/cubit/settings_cubit.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsCubit settingsCubit = BlocProvider.of<SettingsCubit>(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(
          create: (BuildContext context) => SettingsCubit(),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch_data(),
        ],
      ),
    );
  }
}

class Switch_data extends StatefulWidget {
  @override
  _Switch_dataState createState() => _Switch_dataState();
}

List s;
bool val = false;
@override
void initState() {
  
  val = false;
}

class _Switch_dataState extends State<Switch_data> {

  @override
  Widget build(BuildContext context) {
     final SettingsCubit settingsCubit = BlocProvider.of<SettingsCubit>(context);
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
                if (val = true) {
                  s.add(1);
                  settingsCubit.settingsemit(s);
                } else {
                  s.add(0);
                  settingsCubit.settingsemit(s);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
