import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses&qucik_invoice_sction.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: AllExpensesAndQucikInVoiceSection(),
        ),
        SizedBox(width: 24),
        Expanded(
          child: TransActionHistorySection(),
        ),
      ],
    );
  }
}
