import 'package:flutter/material.dart';

class PlayPauseButton extends StatelessWidget {
  int timerState;
  PlayPauseButton(this.timerState, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (timerState == 0 || timerState == 1)
            ? const Icon(
                Icons.play_arrow,
                color: Color(0xff5C6E8D),
                size: 45,
              )
            : Image.asset("assets/images/pause.png"),
        Text(
          (timerState == 0 || timerState == 1) ? "PLAY" : "PAUSE",
          style: const TextStyle(
            fontFamily: 'Baloo-Chettan2',
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Color(0xff5C6E8D),
          ),
        )
      ],
    );
  }
}
