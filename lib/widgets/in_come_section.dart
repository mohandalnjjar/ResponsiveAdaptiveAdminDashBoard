import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_chart..dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InComeSectionHeader(),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: InComeDetails(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
