import 'package:flutter/material.dart';

class ImageTimer extends StatelessWidget {
  final String image;
  const ImageTimer(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.2),
      child: Image.asset(
        image,
        scale: 0.6,
      ),
    );
  }
}
