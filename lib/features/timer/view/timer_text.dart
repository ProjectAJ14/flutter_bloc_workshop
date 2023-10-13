import 'package:flutter/material.dart';

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const duration = "00:00";

    // final minutesStr =
    //     ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    // final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');

    // TODO: Replace below with BlocSelector
    return Text(
      duration,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
