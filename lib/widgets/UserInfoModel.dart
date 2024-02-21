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
        title: 'Folan ElFolany',
        subTitle: 'foola@gmail.com',
        image: Assets.imagesAvatar),
    UserInfoModel(
        title: 'mahmoud',
        subTitle: 'mahmoud&gmail.com',
        image: Assets.imagesAva2),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => SizedBox(
          width: 200,
          child: UserInfolistTile(
            itemData: items[index],
          ),
        ),
      ),
    );
  }
}
