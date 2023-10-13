import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_workshop/features/timer/bloc/timer_bloc.dart';
import 'package:flutter_bloc_workshop/utils/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimerBloc', () {
    blocTest(
      "TimerStartedEvent",
      build: () => TimerBloc(ticker: const Ticker()),
      act: (bloc) => bloc.add(const TimerStartedEvent(duration: 30)),
      expect: () => [
        const TimerRunInProgressState(30),
      ],
    );

    blocTest(
      "TimerPausedEvent",
      build: () => TimerBloc(ticker: const Ticker()),
      act: (bloc) {
        bloc.add(const TimerStartedEvent(duration: 30));
        bloc.add(const TimerPausedEvent());
      },
      expect: () => [
        const TimerRunInProgressState(30),
        const TimerRunPauseState(30),
      ],
    );

    blocTest(
      "TimerResumedEvent",
      build: () => TimerBloc(ticker: const Ticker()),
      act: (bloc) async {
        bloc.add(const TimerStartedEvent(duration: 30));
        bloc.add(const TimerPausedEvent());
        bloc.add(const TimerResumedEvent());
      },
      expect: () => [
        const TimerRunInProgressState(30),
        const TimerRunPauseState(30),
        const TimerRunInProgressState(30),
      ],
    );

    blocTest(
      "TimerResetEvent",
      build: () => TimerBloc(ticker: const Ticker()),
      act: (bloc) async {
        bloc.add(const TimerStartedEvent(duration: 30));
        bloc.add(const TimerPausedEvent());
        bloc.add(const TimerResetEvent());
      },
      expect: () => [
        const TimerRunInProgressState(30),
        const TimerRunPauseState(30),
        const TimerInitialState(30),
      ],
    );
  });
}
