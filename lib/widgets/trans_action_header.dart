import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransActionHeader extends StatelessWidget {
  const TransActionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See All',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
