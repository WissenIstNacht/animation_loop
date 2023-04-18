import 'dart:html';

import 'package:animation_loop/animation_loop.dart';

void main() {
  var counterLoop = AnimationLoop(1);
  var counter = 0;

  var btnCounterLoop = querySelector('#btnCounterLoop') as ButtonElement;
  btnCounterLoop.addEventListener('click', (e) {
    if (counterLoop.is_running) {
      counterLoop.stop();
      btnCounterLoop.text = 'Start';
    } else {
      counterLoop.run(() {
        counter += 1;
        querySelector('#counterDisplay').text = counter.toString();
      });
      btnCounterLoop.text = 'Stop';
    }
  });
}
