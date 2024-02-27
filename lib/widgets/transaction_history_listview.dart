import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/trans_action_model.dart';
import 'package:responsive_dash_board/widgets/trans_action_item.dart';

class TransActionHistoryListView extends StatelessWidget {
  const TransActionHistoryListView({super.key});
  static const items = [
    TrasnActionModel(
      date: '13 Apr, 2024',
      title: 'Cash Withdrawal',
      amount: r'$20,129',
      isWithDrawel: false,
    ),
    TrasnActionModel(
      date: '13 Apr, 2024',
      title: 'Cash Withdrawal',
      amount: r'$20,129',
      isWithDrawel: false,
    ),
    TrasnActionModel(
      date: '13 Apr, 2024',
      title: 'Landing Page project',
      amount: r'$50,929',
      isWithDrawel: false,
    ),
    TrasnActionModel(
      date: '13 Apr, 2022 at 3:30 PM',
      title: 'Juni Mobile App project',
      amount: r'$2230,3',
      isWithDrawel: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => TransActionItem(
        transActionData: items[index],
      ),
    );
  }
}
