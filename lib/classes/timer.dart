import 'dart:async';

class CircleTimer {
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
}
