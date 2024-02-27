import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpensesAndQucikInVoiceSection extends StatelessWidget {
  const AllExpensesAndQucikInVoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 3,
      child: Column(
        children: [
          SizedBox(
            height: 27,
          ),
          AllExpenses(),
          SizedBox(
            height: 10,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
