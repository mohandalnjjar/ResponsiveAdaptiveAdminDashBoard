import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart..dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class InComSectionBody extends StatelessWidget {
  const InComSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.deskToptBreakPoint && width < 2045
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              Expanded(
                flex: 3,
                child: InComeDetails(),
              )
            ],
          );
  }
}
