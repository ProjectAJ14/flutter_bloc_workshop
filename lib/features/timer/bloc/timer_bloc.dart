import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _duration = 30;
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerInitialState(_duration)) {
    on<TimerStartedEvent>(_onStarted);
    on<TimerPausedEvent>(_onPaused);
    on<TimerResumedEvent>(_onResumed);
    on<TimerResetEvent>(_onReset);
    on<_TimerTickedEvent>(_onTicked);
  }
  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  // Start the timer
  void _onStarted(TimerStartedEvent event, Emitter<TimerState> emit) {
    emit(TimerRunInProgressState(event.duration));
    // TODO: stop the previous timer
    // TODO: start a new timer
  }

  // Pause the timer
  void _onPaused(TimerPausedEvent event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgressState) {
      // TODO : pause the timer
    }
  }

  // Resume the timer
  void _onResumed(TimerResumedEvent event, Emitter<TimerState> emit) {
    if (state is TimerRunPauseState) {
      // TODO : resume the timer
    }
  }

  // Reset the timer
  void _onReset(TimerResetEvent event, Emitter<TimerState> emit) {
    // TODO : reset the timer
  }

  // On each tick of the timer
  void _onTicked(_TimerTickedEvent event, Emitter<TimerState> emit) {
    emit(
      event.duration > 0
          ? TimerRunInProgressState(event.duration)
          : const TimerRunCompleteState(),
    );
  }
}
