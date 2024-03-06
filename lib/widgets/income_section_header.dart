
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class InComeSectionHeader extends StatelessWidget {
  const InComeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                width: 1,
                color: Color(0xffF1F1F1),
              ),
            ),
          ),
          child:  Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
             const SizedBox(
                width: 16,
              ),
      const        Icon(
                Icons.keyboard_arrow_down_sharp,
              )
            ],
          ),
        )
      ],
    );
  }
}
