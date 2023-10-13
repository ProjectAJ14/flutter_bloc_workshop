import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/bloc/timer_bloc.dart';
import 'package:flutter_bloc_workshop/features/timer/view/timer_text.dart';
import 'package:flutter_bloc_workshop/utils/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimerText', () {
    testWidgets('displays correct time', (tester) async {
      final bloc = TimerBloc(ticker: const Ticker());
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: bloc,
            child: const TimerText(),
          ),
        ),
      );
      expect(find.text('00:30'), findsOneWidget);
      bloc.close();
    });
  });
}
