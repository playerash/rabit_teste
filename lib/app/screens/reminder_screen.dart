import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/reminder_screen/hour_picker.dart';
import 'package:rabit_teste/app/components/reminder_screen/hour_picker_button.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Aperte"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                  child: SizedBox(
                    height: 338,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 23),
                          child: Text(
                            "Horário de Lembrete",
                            style: TextStyle(
                              fontFamily: 'Fira-Sans',
                              fontSize: 23,
                              color: Color(0xff5c6e8d),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        HourPicker(),
                        HourPickerButton()
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
