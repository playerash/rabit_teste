import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class CircularTimer extends StatelessWidget {
  final CountDownController timerController;
  final Stopwatch stopwatch;
  const CircularTimer(this.timerController, this.stopwatch, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: CircularCountDownTimer(
        duration: 1200,
        initialDuration: 0,
        controller: timerController,
        width: MediaQuery.of(context).size.width / 1.7,
        height: MediaQuery.of(context).size.height / 1.7,
        ringColor: const Color(0xff282A37),
        fillColor: const Color(0xff9EAEC7),
        fillGradient: null,
        strokeWidth: 20.0,
        strokeCap: StrokeCap.round,
        textStyle: const TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
        textFormat: CountdownTextFormat.S,
        isReverse: false,
        isReverseAnimation: false,
        isTimerTextShown: false,
        autoStart: false,
        onComplete: () {
          stopwatch.stop();
        },
      ),
    );
  }
}
