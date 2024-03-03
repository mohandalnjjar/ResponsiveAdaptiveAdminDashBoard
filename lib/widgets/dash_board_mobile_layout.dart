import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses&qucik_invoice_sction.dart';
import 'package:responsive_dash_board/widgets/in_come_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            AllExpensesAndQucikInVoiceSection(),
            SizedBox(
              height: 24,
            ),
            MycardSection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
