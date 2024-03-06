import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_itme_list_view.dart';
import 'package:responsive_dash_board/widgets/cutom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 10,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllEXpensesItemListView(),
        ],
      ),
    );
  }
}
