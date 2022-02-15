import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pop(context)),
      child: Column(
        children: const [
          Icon(
            Icons.check_circle_outline,
            color: Color(0xff5C6E8D),
            size: 45,
          ),
          Text(
            "DONE",
            style: TextStyle(
              fontFamily: 'Baloo-Chettan2',
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color(0xff5C6E8D),
            ),
          )
        ],
      ),
    );
  }
}
