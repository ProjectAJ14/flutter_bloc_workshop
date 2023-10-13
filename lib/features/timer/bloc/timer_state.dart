part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitialState extends TimerState {
  const TimerInitialState(super.duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

final class TimerRunPauseState extends TimerState {
  const TimerRunPauseState(super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

final class TimerRunInProgressState extends TimerState {
  const TimerRunInProgressState(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

final class TimerRunCompleteState extends TimerState {
  const TimerRunCompleteState() : super(0);
}
