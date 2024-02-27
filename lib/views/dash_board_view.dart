import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_desk_top_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_table_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(height: 100),
        tabletLayout: (context) => const DashBoardTaletLayout(),
        deskTopLayout: (context) => const DashBoardDeskTopLayout(),
      ),
    );
  }
}
