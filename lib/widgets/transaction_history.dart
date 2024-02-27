import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/cutom_background_container.dart';
import 'package:responsive_dash_board/widgets/in_come_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/trans_action_history.dart';

class TransActionHistorySection extends StatelessWidget {
  const TransActionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 27),
      child: CustomBackgroundContainer(
          child: Column(
        children: [
          MycardSection(),
          SizedBox(height: 20),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransActionHistory(),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: IncomeSection(),
          ),
        ],
      )),
    );
  }
}
