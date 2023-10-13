import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Get the current duration from the state
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);

    // Calculate the minutes and seconds from the duration
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');

    // Text widget to display the current duration
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
