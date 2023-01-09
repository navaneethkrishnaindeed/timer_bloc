part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  
  const factory TimerEvent.started({required BuildContext ctx}) = Started;
}