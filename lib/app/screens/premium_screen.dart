import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/premium_screen/premium_button.dart';
import 'package:rabit_teste/app/components/premium_screen/premium_container.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  bool showAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    Timer(
                      const Duration(milliseconds: 1),
                      (() {
                        setState(() {
                          showAnimation = true;
                        });
                      }),
                    );
                    return Dialog(
                      insetPadding: EdgeInsets.zero,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                        height: 700,
                        child: Stack(
                          children: [
                            ...List.generate(3, (index) {
                              List<double> listTop = [
                                showAnimation ? 1 : 70,
                                showAnimation ? 1 : 70,
                                showAnimation ? 20 : 70,
                              ];
                              List<double> listLeft = [
                                220,
                                260,
                                280,
                              ];
                              return AnimatedPositioned(
                                top: listTop[index],
                                left: listLeft[index],
                                child: Image.asset(
                                    'assets/images/star-firework${index + 1}.png'),
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                              );
                            }),
                            ...List.generate(6, (index) {
                              List<String> listImages = [
                                'assets/images/star-top.png',
                                'assets/images/ministar1.png',
                                'assets/images/ministar2.png',
                                'assets/images/ministar3.png',
                                'assets/images/firework-blue.png',
                                'assets/images/firework-yellow.png',
                              ];
                              List<double> listTop = [
                                65,
                                30,
                                10,
                                40,
                                0,
                                85,
                              ];
                              List<double> listLeft = [
                                30,
                                262,
                                315,
                                315,
                                335,
                                210,
                              ];
                              return Positioned(
                                top: listTop[index],
                                left: listLeft[index],
                                child: AnimatedOpacity(
                                  opacity: showAnimation ? 1 : 0,
                                  duration: const Duration(milliseconds: 500),
                                  child: Image.asset(listImages[index]),
                                ),
                              );
                            }),
                            const Align(
                                alignment: Alignment.center,
                                child: PremiumContainer()),
                            Align(
                              alignment: Alignment(1, 0.8),
                              child: FractionallySizedBox(
                                  heightFactor: 0.1,
                                  widthFactor: 0.2,
                                  child: Image.asset(
                                      'assets/images/star-bottom.png')),
                            ),
                            const Align(
                              alignment: Alignment(0.0, 0.8),
                              child: FractionallySizedBox(
                                heightFactor: 0.08,
                                widthFactor: 0.45,
                                child: PremiumButton(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
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
