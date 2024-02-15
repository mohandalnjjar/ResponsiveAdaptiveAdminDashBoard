import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main(List<String> args) {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
