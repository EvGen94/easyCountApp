import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../classes/timer.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerInitial());

  CircleTimer timer = CircleTimer();

  Future<void> getTick() {
    Future<int> tick;
    tick = timer.startTimer();
    emit(TimerStart(tick: tick));
  }
}
