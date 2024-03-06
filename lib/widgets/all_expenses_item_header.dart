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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imagebackgroundColor ?? const Color(0xffFFFFFF),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iamge,
                    colorFilter: ColorFilter.mode(
                        iamgeColor ?? Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
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
