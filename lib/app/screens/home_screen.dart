import 'package:flutter/material.dart';

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
              onPressed: () {},
              child: const Text("Tela 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tela 2"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Tela 3"),
            ),
          ],
        ),
      ),
    );
  }
}
