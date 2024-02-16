import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.listTileData,
  });

  final DrawerItmeModel listTileData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileData.image),
      title: Text(
        listTileData.title,
        style: AppStyles.StyleMedium16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.listTileData,
  });

  final DrawerItmeModel listTileData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileData.image),
      title: Text(
        listTileData.title,
        style: AppStyles.StyleBold16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
