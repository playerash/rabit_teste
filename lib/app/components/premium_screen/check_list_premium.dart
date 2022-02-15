import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/premium_screen/check_itens.dart';

class CheckListPremium extends StatelessWidget {
  const CheckListPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CheckItens("Metas"),
            SizedBox(height: 15),
            CheckItens("Rotinas"),
            SizedBox(height: 15),
            CheckItens("2x Moedas"),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CheckItens("To Do List"),
            SizedBox(height: 15),
            CheckItens("Salvar na núvem"),
            SizedBox(height: 15),
            CheckItens("Marcar dias anteriores"),
          ],
        ),
      ],
    );
  }
}
