import 'package:animation_loop/animation_loop.dart';

void main() {
  var loop = AnimationLoop(.5);
  loop.run(() => print('This print statement is executed every other second.'));
  loop.stop();

  var seconds = AnimationLoop(1);
  loop.run(() => print('tick.'));
}
