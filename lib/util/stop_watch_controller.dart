import 'dart:async';
import 'package:flutter/material.dart';

class StopWatchController extends ValueNotifier<int> {
  StopWatchController() : super(0);

  Timer? _timer;

  bool get running => _timer == null;

  void start() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        value = ++value;
      },
    );
    return;
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
    value = 0;
    return;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
