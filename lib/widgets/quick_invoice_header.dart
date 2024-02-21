
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class QucickInVoiceHeader extends StatelessWidget {
  const QucickInVoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Qucik Invoice',
          style: AppStyles.styleSemiBold16,
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
