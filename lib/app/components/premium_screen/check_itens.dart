import 'package:flutter/material.dart';

class CheckItens extends StatelessWidget {
  String name;
  CheckItens(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xff9cfce6),
          child: Image.asset("assets/images/check.png"),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          name,
          style: TextStyle(color: Color(0xff9EAEC7)),
        ),
      ],
    );
  }
}
