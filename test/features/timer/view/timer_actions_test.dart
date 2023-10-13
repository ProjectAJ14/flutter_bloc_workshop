import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/bloc/timer_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/view/timer_actions.dart';
import 'package:flutter_bloc_workshop/utils/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimerActions', () {
    testWidgets('should display two buttons', (WidgetTester tester) async {
      final bloc = TimerBloc(ticker: const Ticker());
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: bloc,
            child: const TimerActions(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Initial State : Should display play button
      expect(find.byIcon(Icons.play_arrow), findsOneWidget);

      // Call Start Event
      await tester.tap(find.byIcon(Icons.play_arrow));

      await tester.pumpAndSettle();

      // TimerRunInProgressState : Should display pause and restart buttons

      expect(find.byIcon(Icons.pause), findsOneWidget);

      expect(find.byIcon(Icons.replay), findsOneWidget);

      // Call Pause Event

      await tester.tap(find.byIcon(Icons.pause));

      await tester.pumpAndSettle();

      // TimerRunPauseState : Should display play and restart buttons

      expect(find.byIcon(Icons.play_arrow), findsOneWidget);

      expect(find.byIcon(Icons.replay), findsOneWidget);

      // Call Reset Event

      await tester.tap(find.byIcon(Icons.replay));

      await tester.pumpAndSettle();

      // TimerInitialState : Should display play button

      expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    });
  });
}
