part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState(this.duration);

  final int duration;

  @override
  List<Object> get props => [duration];
}

// initial state || TimerInitial — ready to start counting down from the specified duration.
class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial {duration: $duration}';
}

// running state || TimerRunInProgress — actively counting down from the specified duration.

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunInProgress {duration: $duration}';
}

// pause state || TimerRunPause — paused at some remaining duration.

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunPause {duration: $duration}';
}

// stop / complete state || TimerRunComplete — completed with a remaining duration of 0.

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}

// error state