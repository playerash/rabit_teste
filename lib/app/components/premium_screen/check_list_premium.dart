import 'package:flutter/material.dart';
import 'package:rabit_teste/app/components/premium_screen/check_itens.dart';

class CheckListPremium extends StatelessWidget {
  const CheckListPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckItens("Metas"),
            const SizedBox(height: 15),
            CheckItens("Rotinas"),
            const SizedBox(height: 15),
            CheckItens("2x Moedas"),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckItens("To Do List"),
            const SizedBox(height: 15),
            CheckItens("Salvar na núvem"),
            const SizedBox(height: 15),
            CheckItens("Marcar dias anteriores"),
          ],
        ),
      ],
    );
  }
}
