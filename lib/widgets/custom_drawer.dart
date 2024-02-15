import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_otem_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawerItem.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(
        children: [
          UserInfolistTile(
            title: 'HnoOd ALnjjar',
            subTitle: 'demo@gmail.com',
            image: Assets.imagesAvatar,
          ),
          SizedBox(
            height: 8,
          ),
          DraweritemsListView(),
        ],
      ),
    );
  }
}

class DraweritemsListView extends StatelessWidget {
  const DraweritemsListView({
    super.key,
  });

  static const List<DrawerItmeModel> items = [
    DrawerItmeModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItmeModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItmeModel(title: 'Dashboard', image: Assets.imagesCategory),
    DrawerItmeModel(title: 'My Investments', image: Assets.imagesChart2),
    DrawerItmeModel(title: 'Wallet Account', image: Assets.imagesWallet),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: DrawerItem(
          listTileData: items[index],
        ),
      ),
    );
  }
}
