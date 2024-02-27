import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/trans_action_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransActionItem extends StatelessWidget {
  const TransActionItem({super.key, required this.transActionData});
  final TrasnActionModel transActionData;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(
          transActionData.title,
        ),
        subtitle: Text(
          transActionData.date,
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transActionData.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transActionData.isWithDrawel
                ? const Color(0xffF3735E)
                : const Color(0XFF7CD87A),
          ),
        ),
      ),
    );
  }
}
