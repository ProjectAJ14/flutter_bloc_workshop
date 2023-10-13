part of 'timer_bloc.dart';

sealed class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

final class TimerStartedEvent extends TimerEvent {
  const TimerStartedEvent({required this.duration});
  final int duration;
}

final class TimerPausedEvent extends TimerEvent {
  const TimerPausedEvent();
}

final class TimerResumedEvent extends TimerEvent {
  const TimerResumedEvent();
}

class TimerResetEvent extends TimerEvent {
  const TimerResetEvent();
}

class _TimerTickedEvent extends TimerEvent {
  const _TimerTickedEvent({required this.duration});
  final int duration;
}
