import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(TimerState.initial()) {
    on<Started>((event, emit) {
      Timer(
        Duration(seconds: 2),
        () => Navigator.of(event.ctx).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => Scaffold(
              body: Center(
                child: Text("Completed"),
              ),
            ),
          ),
        ),
      );
    });
  }
}
