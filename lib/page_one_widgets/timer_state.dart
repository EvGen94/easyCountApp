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
          return Text("Timer initial");
        }
        if (state is TimerStart) {
          return Text("${state.tick}");
        }
        return Text("Not initial Timer");
      },
      
    );
  }
}
