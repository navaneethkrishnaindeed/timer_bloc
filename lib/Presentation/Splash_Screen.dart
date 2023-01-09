import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_bloc/Application/bloc/timer_bloc.dart';

class SplashScreenone extends StatelessWidget {
  const SplashScreenone({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<TimerBloc>(context).add(TimerEvent.started(ctx: context));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Image.asset("assets/ykip.png"),
              // nextScreen: Scaffold(),
            ),
            Spacer(),
            // Container(
            //   child: assetsPath.Splashscreenimage,
            // ),
          ],
        ),
      )),
    );
  }
}
