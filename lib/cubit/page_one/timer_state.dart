part of 'timer_cubit.dart';

@immutable
abstract class TimerState {}

class TimerInitial extends TimerState {}

class TimerStart extends TimerState {
  Future<int> tick;
  TimerStart({@required this.tick});
}
