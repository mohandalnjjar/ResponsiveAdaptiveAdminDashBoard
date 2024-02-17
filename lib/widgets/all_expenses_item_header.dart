import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.iamge,
    this.iamgeColor = const Color(0xFF4EB7FE),
    required this.backgroundColor,
  });
  final String iamge;
  final Color iamgeColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: backgroundColor,
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            iamge,
            colorFilter: ColorFilter.mode(iamgeColor),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
        )
      ],
    );
  }
}
