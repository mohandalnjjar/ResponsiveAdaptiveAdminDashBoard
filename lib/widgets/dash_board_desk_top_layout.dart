import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
      ],
    );
  }
}
