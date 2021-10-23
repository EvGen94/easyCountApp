import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../classes/timer.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  final Ticker ticker;

  TimerCubit(this.ticker) : super(TimerInitial());

  void timerInitial() {
    emit(TimerInitial());
  }

  void getTick() {
    var controller = StreamController<int>();
    // controller.sink.add(5);
    ticker.tick().listen((event) {
      event == 0 ? print("your score is ... Start again ?") : controller.sink.add(event);
    });

    emit(TimerRun(controller.stream));
  }
}
