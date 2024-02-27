import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        decoration: const BoxDecoration(
          // color: Color(0xff4EB7F2),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCard),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.StyleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: const Text(
                'Mohannd Alnjjar',
                style: AppStyles.StyleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.StyleSemiBold24.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' 12/20 - 124',
                    style:
                        AppStyles.StyleRegular16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
