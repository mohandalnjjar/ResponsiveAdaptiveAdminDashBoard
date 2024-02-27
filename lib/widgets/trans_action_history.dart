import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/trans_action_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_listview.dart';

class TransActionHistory extends StatelessWidget {
  const TransActionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransActionHeader(),
        SizedBox(
          height: 24,
        ),
        TransActionHistoryListView(),
      ],
    );
  }
}
