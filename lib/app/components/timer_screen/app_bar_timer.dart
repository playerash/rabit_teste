import 'package:flutter/material.dart';

class AppBarTimer extends StatelessWidget {
  const AppBarTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0XFF9EAEC7),
            ),
          ),
          Image.asset("assets/images/timer.png"),
        ],
      ),
    );
  }
}
