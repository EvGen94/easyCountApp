part of 'timer_cubit.dart';

@immutable
abstract class TimerState {
//final int duration;
 // const TimerState(this.duration);
}

class TimerInitial extends TimerState {
   //const TimerInitial(int duration) : super(duration);
}

class TimerRun extends TimerState {
  //const TimerRun(int duration) : super(duration);
  
  Stream<int> mystream;
  TimerRun(@required this.mystream);
}
