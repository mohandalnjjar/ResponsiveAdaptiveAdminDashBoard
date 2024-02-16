import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawerItem.dart';

class DraweritemsListView extends StatefulWidget {
  const DraweritemsListView({
    super.key,
  });

  @override
  State<DraweritemsListView> createState() => _DraweritemsListViewState();
}

class _DraweritemsListViewState extends State<DraweritemsListView> {
  final List<DrawerItmeModel> items = const [
    DrawerItmeModel(title: 'Dashboard', image: Assets.imagesCategory),
    DrawerItmeModel(title: 'My Transaction', image: Assets.imagesConvertCard),
    DrawerItmeModel(title: 'Statistics', image: Assets.imagesGraph),
    DrawerItmeModel(title: 'My Investments', image: Assets.imagesChart2),
    DrawerItmeModel(title: 'Wallet Account', image: Assets.imagesWallet),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            setState(() {
              activeIndex = index;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: DrawerItem(
            listTileData: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
