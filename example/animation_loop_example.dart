import 'package:animation_loop/animation_loop.dart';

void main() {
  var s = AnimationLoop(.5);
  s.run(() => print('This print statement is executed every other second.'));
}
