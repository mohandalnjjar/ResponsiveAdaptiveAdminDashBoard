import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_list_view_model.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List items = [
    UserInfoModel(
        title: 'Mohanad Alnjjar',
        subTitle: 'HnOodAlnjjar&gmial.com',
        image: Assets.imagesAva2),
    UserInfoModel(
        title: 'Montaser Bk',
        subTitle: 'foola@gmail.com',
        image: Assets.imagesAvatar),
    UserInfoModel(
        title: 'mai', subTitle: 'mai@gmail.com', image: Assets.imagesAva2),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfolistTile(itemData: e),
                ),
              )
              .toList()),
    );
  }
}
