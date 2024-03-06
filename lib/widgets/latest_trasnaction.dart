import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/UserInfoModel.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LatestTransaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
   const     LatestTransactionListView(),
      ],
    );
  }
}
