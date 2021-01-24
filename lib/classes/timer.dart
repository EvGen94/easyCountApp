import 'dart:async';

class Ticker {
  Stream<int> tick() {
    int ticks;
    ticks = 5;
    return Stream.periodic(Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}

/*class CircleTimer {
  int _counter;
  Timer _timer;
  Future<int> startTimer()async {
    _counter = 30;

    _timer =   Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        _counter--;
      } else {
        _timer.cancel();
      }
      return _counter;
    });
    
  }
}*/
