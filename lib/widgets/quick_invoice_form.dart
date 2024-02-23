import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_bootm.dart';
import 'package:responsive_dash_board/widgets/title_text_filed.dart';

class QuickInVoiceForm extends StatelessWidget {
  const QuickInVoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                title: 'Customer name',
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(
                title: 'Customer Email',
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                title: 'Item name',
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(
                title: 'Item mount',
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButtom(
                color: Color(0xff4EB7F2),
                hint: 'Send Money',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButtom(
                textColor: Color(0xff4EB7F2),
                hint: 'Add more details',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
