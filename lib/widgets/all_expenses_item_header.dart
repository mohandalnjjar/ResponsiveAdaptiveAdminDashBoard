import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.iamge,
    this.iamgeColor,
    this.imagebackgroundColor,
  });
  final String iamge;
  final Color? iamgeColor, imagebackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: imagebackgroundColor ?? const Color(0xffFFFFFF),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            iamge,
            colorFilter:
                ColorFilter.mode(iamgeColor ?? Colors.white, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: iamgeColor ?? Colors.black,
        )
      ],
    );
  }
}
