import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static const int _duration = 60;
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
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTickedEvent(duration: duration)));
  }

  // Pause the timer
  void _onPaused(TimerPausedEvent event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgressState) {
      _tickerSubscription?.pause();
      emit(TimerRunPauseState(state.duration));
    }
  }

  // Resume the timer
  void _onResumed(TimerResumedEvent event, Emitter<TimerState> emit) {
    if (state is TimerRunPauseState) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgressState(state.duration));
    }
  }

  // Reset the timer
  void _onReset(TimerResetEvent event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const TimerInitialState(_duration));
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
