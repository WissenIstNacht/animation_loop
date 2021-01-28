import 'dart:html';

class AnimationLoop {
  num _lastTimeStamp = 0;
  num _animation_interval;

  bool is_running = true;

  AnimationLoop(num executionRate) {
    _animation_interval = 1000 / executionRate;
  }

  void run(void Function() update) async {
    while (is_running) {
      final delta = await window.animationFrame;
      final diff = delta - _lastTimeStamp;
      if (diff > _animation_interval) {
        _lastTimeStamp = delta;
        update();
      }
    }
  }

  void stop() => is_running = false;

  set executionRate(num executionRate) {
    // framerate internally represented as time interval of milliseconds.
    _animation_interval = 1000 / executionRate;
  }
}
