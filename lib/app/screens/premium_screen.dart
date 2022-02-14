import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  child: Container(
                    height: 600,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            color: Colors.amber,
                            height: 100,
                            width: MediaQuery.of(context).size.width - 100,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Colors.red,
                            height: 400,
                            width: MediaQuery.of(context).size.width - 100,
                          ),
                        ),
                        Positioned(
                          left: 80,
                          top: 470,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff7c78e6)),
                              child: const Center(
                                  child: Text(
                                "Vamos lá",
                                style: TextStyle(
                                    fontSize: 27, color: Color(0xfff9f9f9)),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text("Aperte"),
        ),
      ),
    );
  }
}
