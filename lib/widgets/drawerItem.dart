import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_otem_model.dart';
import 'package:responsive_dash_board/widgets/inactive&active_drawert_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.listTileData, required this.isActive});
  final DrawerItmeModel listTileData;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            listTileData: listTileData,
          )
        : InActiveDrawerItem(listTileData: listTileData);
  }
}
