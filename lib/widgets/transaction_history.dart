import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/in_come_section.dart';
import 'package:responsive_dash_board/widgets/trans_action_history.dart';

class TransActionHistorySection extends StatelessWidget {
  const TransActionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        children: [
          TransActionHistory(),
          SizedBox(height: 12),
          Expanded(
            child: IncomeSection(),
          ),
        ],
      ),
    );
  }
}
