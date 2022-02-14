import 'package:flutter/material.dart';

class HourPickerButton extends StatelessWidget {
  const HourPickerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2b2e44),
      width: double.infinity,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancelar",
              style: TextStyle(
                color: Color(0xfff9f9f9),
                fontSize: 20,
                fontFamily: 'Fira-Sans',
              ),
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            indent: 10,
            endIndent: 10,
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Selecionar",
              style: TextStyle(
                  color: Color(0xfff9f9f9),
                  fontSize: 20,
                  fontFamily: 'Fira-Sans'),
            ),
          )
        ],
      ),
    );
  }
}
