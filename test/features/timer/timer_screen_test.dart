import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/bloc/timer_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/timer_screen.dart';
import 'package:flutter_bloc_workshop/utils/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    "Timer Screen",
    () {
      testWidgets(
        'should display the initial time',
        (WidgetTester tester) async {
          // Build the TimerScreen widget with the mock TimerBloc
          await tester.pumpWidget(
            BlocProvider<TimerBloc>.value(
              value: TimerBloc(ticker: const Ticker()),
              child: const MaterialApp(
                home: TimerScreen(),
              ),
            ),
          );

          // Verify that the initial time is displayed
          // TODO: Write Expect here
        },
      );
    },
  );
}
