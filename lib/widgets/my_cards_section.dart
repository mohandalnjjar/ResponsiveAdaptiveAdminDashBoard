import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/DOTS_INDICATOR.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MycardSection extends StatefulWidget {
  const MycardSection({super.key});

  @override
  State<MycardSection> createState() => _MycardSectionState();
}

class _MycardSectionState extends State<MycardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Card',
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicatorList(
          currentPage: currentPage,
        ),
      ],
    );
  }
}
