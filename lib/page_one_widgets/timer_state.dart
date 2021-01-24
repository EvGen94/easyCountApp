import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/page_one/timer_cubit.dart';

class Timer extends StatelessWidget {
  const Timer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        if (state is TimerInitial) {
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
          child: Text("5"),
        ),
      ),
    );
        }
        if (state is TimerRun) {
          return StreamBuilder(
            stream: state.mystream,
            builder: (contex, snapshot) {
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
          child: Text("${snapshot.data}"),
        ),
      ),
    );
            },
          );
        }
        return Text("Not initial Timer");
      },
    );
  }
}
