import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/responsive_font_size.dart';

abstract class AppStyles {
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 20),
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 20),
      color: const Color(0xFFFFFFFF),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064061),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 20),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 12),
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 24),
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 18),
      color: const Color(0XffFFFFFF),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponSiveFontSize(context, fontSize: 14),
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
}
