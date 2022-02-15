import 'package:flutter/material.dart';
import 'package:rabit_teste/app/screens/premium_screen.dart';
import 'package:rabit_teste/app/screens/reminder_screen.dart';
import 'package:rabit_teste/app/screens/timer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Telas"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PremiumScreen(),
                  ),
                );
              },
              child: const Text("Tela 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReminderScreen(),
                  ),
                );
              },
              child: const Text("Tela 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TimerScreen(),
                  ),
                );
              },
              child: const Text("Tela 3"),
            ),
          ],
        ),
      ),
    );
  }
}
