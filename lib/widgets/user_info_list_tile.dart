import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfolistTile extends StatelessWidget {
  const UserInfolistTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppSsyles.StyleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: AppSsyles.StyleReular12,
        ),
      ),
    );
  }
}
