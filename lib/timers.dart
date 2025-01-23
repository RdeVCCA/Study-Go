import 'dart:async';

import 'package:flutter/material.dart';

// Ref class.
// Forces T into a reference.
// Just channel your inner C++, google, pls, arigathank you
class _ref<T> {
  T value;
  _ref(this.value);
}

class Clock {
  ValueNotifier<int> time;
  late Timer timer;
  _ref<bool> started;

  Clock()
      : time = ValueNotifier(0),
        timer = Timer(Duration(seconds: 0), () {}),
        started = _ref(false);

  void start() {
    if (!started.value) {
      timer = Timer.periodic(
        Duration(
          seconds: 1,
        ),
        (ValueNotifier<int> notifier) {
          return (Timer _) {
            notifier.value++;
          };
        }(time),
      );
      started.value = true;
    }
  }

  void stop() {
    if (!started.value) return;

    int lastTiming = time.value;
    time.value = 10;
    timer.cancel();
    started.value = false;

    // What the fuck
    Timer.periodic(
        const Duration(
          seconds: 1,
        ),
        // Istg this is the true callback and fp hell
        // Fuck sqlite, this doesn't come close
        (ValueNotifier<int> notifier, _ref<bool> started, int lastTiming) {
          return (Timer countdown) {
            if (started.value == true) {
              time.value = lastTiming;
            } else if (time.value > 0) {
              time.value--;
              return;
            }
            countdown.cancel();
          };
        }(time, started, lastTiming));
  }
}

Clock globalTimer = Clock();
