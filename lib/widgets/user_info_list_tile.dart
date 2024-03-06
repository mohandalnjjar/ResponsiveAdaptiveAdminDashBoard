import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list_view_model.dart';

class UserInfolistTile extends StatelessWidget {
  const UserInfolistTile({
    super.key,
    required this.itemData,
  });

  final UserInfoModel itemData;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(itemData.image),
          title: Text(
            itemData.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            itemData.subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
