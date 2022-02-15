import 'package:flutter/material.dart';

class TitleTimer extends StatelessWidget {
  final String title;
  const TitleTimer(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xffD572C8),
        fontFamily: 'Fira-Sans',
        fontWeight: FontWeight.bold,
        fontSize: 27,
      ),
    );
  }
}
