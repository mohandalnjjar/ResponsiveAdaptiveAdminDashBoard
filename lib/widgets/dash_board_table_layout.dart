import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses&qucik_invoice_sction.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/in_come_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';

class DashBoardTaletLayout extends StatelessWidget {
  const DashBoardTaletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
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
          ),
        )
      ],
    );
  }
}
