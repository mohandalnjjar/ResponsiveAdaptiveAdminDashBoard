import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dot_indicaator.dart';

class DotsIndicatorList extends StatelessWidget {
  const DotsIndicatorList({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomDotIndicator(isActive: currentPage == index),
        ),
      ),
    );
  }
}
