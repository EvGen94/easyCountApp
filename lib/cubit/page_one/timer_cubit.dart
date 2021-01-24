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
    
    ticker.tick().listen((event) {
      controller.sink.add(event);
    });

    emit(TimerRun(controller.stream));
  }
}
