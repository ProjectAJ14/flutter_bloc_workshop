import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

/// To show the current duration, we need to access the state of the TimerBloc.
/// For demonstration purposes, we have used two different methods to
/// access the state.
///
/// 1. Using [BlocSelector]
///     Already used in the code
///
/// 2. Using [context.select]
///     To use this method, replace the code in the build method with the
///     below commented code.
///

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocSelector<TimerBloc, TimerState, String>(
      selector: (state) {
        final duration = state.duration;

        final minutesStr =
            ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');

        return '$minutesStr:$secondsStr';
      },
      builder: (context, state) {
        return Text(
          state,
          style: Theme.of(context).textTheme.displayLarge,
        );
      },
    );
  }
}

    // ? [context.select]
    /// [context.select] is a method that allows you to select a part of the
    /// widget tree to rebuild when a specific part of the state changes.
    /// It takes a BuildContext object and a Selector object as arguments.
    /// The Selector object specifies which part of the state to listen to
    /// and which part of the widget tree to rebuild.

    /// Get the current duration from the state
    
    // TODO: Uncomment the below code to use [context.select]
    // final duration = context.select((TimerBloc bloc) => bloc.state.duration);

    /// Calculate the minutes and seconds from the duration
    
    // TODO: Uncomment the below code to use [context.select]

    // final minutesStr =
    //     ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    // final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');

    // return Text(
    //   ',,,,$minutesStr:$secondsStr',
    //   style: Theme.of(context).textTheme.displayLarge,
    // );

    
