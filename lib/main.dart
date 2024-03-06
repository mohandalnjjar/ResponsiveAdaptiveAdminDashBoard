import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_view.dart';

void main(List<String> args) {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) {
        return const ResponsiveApp();
      },
    ),
  );
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
