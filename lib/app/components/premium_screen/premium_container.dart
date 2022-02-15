import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/premium_screen/check_list_premium.dart';

class PremiumContainer extends StatelessWidget {
  const PremiumContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff2b2e44),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 500,
      width: MediaQuery.of(context).size.width - 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Bem-Vindo\nà nossa toca!",
                  style: TextStyle(
                      height: 1,
                      color: Color(0xfff9f9f9),
                      fontSize: 30,
                      fontFamily: 'Baloo-Chettan2',
                      fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/images/rabit.png")
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 15),
              child: Text(
                "Suas novas funcionalidades:",
                style: TextStyle(
                    color: Color(0xfff9f9f9),
                    fontSize: 20,
                    fontFamily: 'Baloo-Chettan2',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const CheckListPremium(),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Nosso herói!",
                  style: TextStyle(
                    color: Color(0xfff9f9f9),
                    fontFamily: 'Baloo-Chettan2',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Queremos lhe agradecer por estar conosco. A Jornada Premium lhe aguarda.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1,
                      color: Color(0xfff9f9f9),
                      fontFamily: 'Baloo-Chettan2',
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
