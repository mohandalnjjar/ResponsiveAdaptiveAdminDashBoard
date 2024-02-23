import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key, this.color, required this.hint, this.textColor});
  final Color? color, textColor;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: color ?? Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          hint,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
