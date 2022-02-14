import 'package:flutter/material.dart';

class HourPicker extends StatelessWidget {
  const HourPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List hours = List.generate(24, (index) {
      if (index + 1 < 10) {
        return "0" + (index + 1).toString();
      } else {
        return index + 1;
      }
    });
    List minutes = List.generate(59, (index) {
      if (index + 1 < 10) {
        return "0" + (index + 1).toString();
      } else {
        return index + 1;
      }
    });
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 15),
            child: VerticalDivider(
              indent: 60,
              endIndent: 60,
              color: Color(0xffd1d9e6),
            ),
          ),
          Expanded(
            child: ListWheelScrollView(
              useMagnifier: true,
              itemExtent: 50,
              magnification: 1.5,
              children: hours
                  .map(
                    (hour) => Text(
                      hour.toString(),
                      style: const TextStyle(
                        fontFamily: 'Fira-Sans',
                        fontSize: 20,
                        color: Color(0xff2b2e44),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: VerticalDivider(
              indent: 60,
              endIndent: 60,
              color: Color(0xffd1d9e6),
            ),
          ),
          Expanded(
            child: ListWheelScrollView(
              useMagnifier: true,
              itemExtent: 50,
              magnification: 1.5,
              children: minutes
                  .map(
                    (minute) => Text(
                      minute.toString(),
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xff2b2e44)),
                    ),
                  )
                  .toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 30),
            child: VerticalDivider(
              indent: 60,
              endIndent: 60,
              color: Color(0xffd1d9e6),
            ),
          ),
        ],
      ),
    );
  }
}
