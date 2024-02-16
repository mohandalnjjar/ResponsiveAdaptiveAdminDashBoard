import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xff4EB7F2),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          AllExpensesItemHeader(
            iamge: Assets.imagesCardReceive,
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            "item",
            style: AppStyles.StyleMedium16,
          ),
          Text(
            "April 2024",
            style: AppStyles.StyleRegular16,
          ), Text(
            "20,129",
            style: AppStyles.StyleRegular16,
          ),
        ],
      ),
    );
  }
}
