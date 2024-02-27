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
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See All',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
