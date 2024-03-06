import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/cutom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/trans_action_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_listview.dart';

class TransActionHistory extends StatelessWidget {
  const TransActionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MycardSection(),
          SizedBox(height: 20),
          Divider(
            height: 15,
            color: Color(0xffF1F1F1),
          ),
          TransActionHeader(),
          SizedBox(
            height: 24,
          ),
          TransActionHistoryListView(),
        ],
      ),
    );
  }
}
