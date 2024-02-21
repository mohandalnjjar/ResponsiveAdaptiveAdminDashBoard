import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/UserInfoModel.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Text(
            'LatestTransaction',
            style: AppStyles.StyleMedium16,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: LatestTransactionListView(),
          ),
        ],
      ),
    );
  }
}
