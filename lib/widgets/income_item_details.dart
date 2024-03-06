import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_Details_Model.dart.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsData});
  final IncomeItemDetailsModel itemDetailsData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsData.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsData.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsData.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
