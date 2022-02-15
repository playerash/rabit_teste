import 'package:flutter/material.dart';

class TextWatch extends StatelessWidget {
  String stopwatchText;
  TextWatch(this.stopwatchText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.3),
      child: Text(
        stopwatchText,
        style: const TextStyle(
            fontSize: 44,
            fontFamily: 'Fira-Sans',
            fontWeight: FontWeight.w600,
            color: Color(0xff9EAEC7)),
      ),
    );
  }
}
