A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

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

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
