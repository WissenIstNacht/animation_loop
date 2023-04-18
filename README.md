# Animation Loop

A library for *web* projects in Dart.

This library contains a looping mechanism that allows to execute a method at a certain rate.

## Usage

### Example

The library imports `Dart:html` and is therefore only available in web environments. This is reflected by the example, a very basic web-app that implements a counter.

To see the example in action, run `webdev serve example` from the project's root.

### API

To create a counter, simply call the constructor with the desired looping frequency. I.e., the number of times you want the loop to be executed per second. For example, `AnimationLoop(2)` will give to animations per second, while `Animation(0.5)` will result in an aimation every 2 seconds.

As can be seen in the example, the loop exposes three things:

- `run` method: Starts the loop. The method accepts a callback which contains the code that will be executed at each loop.
- `stop` method: Stops the loop. 
- `isRunning` flag. Let's you know when the loop is running, so you can call run or stop in order to pause or continue looping.
