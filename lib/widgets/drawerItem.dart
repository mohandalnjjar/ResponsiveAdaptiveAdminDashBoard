import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_otem_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.listTileData});
  final DrawerItmeModel listTileData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(listTileData.image),
      title: Text(
        listTileData.title,
        style: AppSsyles.StyleMedium16,
      ),
    );
  }
}
