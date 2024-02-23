import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/cutom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_trasnaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QucickInVoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInVoiceForm()
        ],
      ),
    );
  }
}
