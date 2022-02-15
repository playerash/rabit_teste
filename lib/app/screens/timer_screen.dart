import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/timer_screen/app_bar_timer.dart';
import 'package:rabit_teste/app/components/timer_screen/circular_timer.dart';
import 'package:rabit_teste/app/components/timer_screen/done_button.dart';
import 'package:rabit_teste/app/components/timer_screen/play_pause_button.dart';
import 'package:rabit_teste/app/components/timer_screen/text_watch.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  void setStopwatchText() {
    stopwatchText = stopwatch.elapsed.inMinutes.toString().padLeft(2, "0") +
        ":" +
        (stopwatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
  }

  void startTimeout() {
    Timer(timeout, handleTimeout);
  }

  void handleTimeout() {
    if (stopwatch.isRunning) {
      startTimeout();
    }
    setState(() {
      setStopwatchText();
    });
  }

  CountDownController timerController = CountDownController();
  int timerState = 0;
  Stopwatch stopwatch = Stopwatch();
  String stopwatchText = '00:00';
  final timeout = const Duration(seconds: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD6BCD2),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color(0xff2B2E44),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppBarTimer(),
              const Text(
                "ESTUDAR\nMATEMÁTICA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffD572C8),
                  fontFamily: 'Fira-Sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    TextWatch(stopwatchText),
                    Align(
                      alignment: const Alignment(0, -0.2),
                      child: Image.asset(
                        'assets/images/cacto.png',
                        scale: 0.6,
                      ),
                    ),
                    CircularTimer(timerController, stopwatch)
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (timerState == 0) {
                          stopwatch.start();
                          handleTimeout();
                          timerController.start();
                          timerState = 2;
                        } else if (timerState == 2) {
                          timerState = 1;
                          timerController.pause();
                          stopwatch.stop();
                        } else {
                          timerState = 2;
                          timerController.resume();
                          stopwatch.start();
                          handleTimeout();
                        }
                      });
                    },
                    child: PlayPauseButton(timerState),
                  ),
                  const DoneButton()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
