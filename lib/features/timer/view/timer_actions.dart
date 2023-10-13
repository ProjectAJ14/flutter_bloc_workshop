import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

class TimerActions extends StatelessWidget {
  const TimerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...switch (state) {
              /// Initial state
              TimerInitialState() => [
                  FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // TODO: Start the timer
                    },
                  ),
                ],

              /// Timer is running
              TimerRunInProgressState() => [
                  FloatingActionButton(
                    child: const Icon(Icons.pause),
                    onPressed: () {
                      // TODO: Pause the timer
                    },
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () {
                      // TODO: Reset the timer
                    },
                  ),
                ],

              /// Pause State
              TimerRunPauseState() => [
                  FloatingActionButton(
                    child: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // TODO: Resume the timer
                    },
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () {
                      // TODO: Reset the timer
                    },
                  ),
                ],

              /// Completed state
              TimerRunCompleteState() => [
                  FloatingActionButton(
                    child: const Icon(Icons.replay),
                    onPressed: () {
                      // TODO: Reset the timer
                    },
                  ),
                ]
            },
          ],
        );
      },
    );
  }
}
