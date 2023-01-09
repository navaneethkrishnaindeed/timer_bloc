part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState()=_TimerState;
   factory TimerState.initial() =>TimerState();
}
