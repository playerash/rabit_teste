import 'package:flutter/material.dart';

class PremiumButton extends StatelessWidget {
  const PremiumButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 198,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xff7c78e6)),
        child: const Center(
            child: Text(
          "Vamos lá",
          style: TextStyle(
            fontSize: 27,
            color: Color(0xfff9f9f9),
            fontFamily: "Fira-Sans",
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
