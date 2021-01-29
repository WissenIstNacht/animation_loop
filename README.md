A library for web projects in Dart.

This library contains a looping mechanism that allows to execute a method at a certain rate.

## Usage

A simple usage example:

```dart
import 'package:animation_loop/animation_loop.dart';

main() {
  var loop = AnimationLoop(.5);
  loop.run(() => print('This print statement is executed every other second.'));
  loop.stop();

  var seconds = AnimationLoop(1);
  loop.run(() => print('tick.'));
}
```

Another typical usage example is a game loop.
