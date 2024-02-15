import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: const Row(
        children: [
          Text(
            'month',
            style: AppStyles.styleSemiBold16,
          ),
          Icon(
            Icons.keyboard_arrow_down,
          ),
        ],
      ),
    );
  }
}
