import 'package:animation_loop/animation_loop.dart';
import 'package:test/test.dart';

void main() {
  var loop = AnimationLoop(1);

  test("Doesn't crash", () {
    loop.run(() {});
    loop.stop();
  });
}
