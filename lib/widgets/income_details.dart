import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_Details_Model.dart.dart';
import 'package:responsive_dash_board/widgets/income_item_details.dart';

class InComeDetails extends StatelessWidget {
  const InComeDetails({super.key});
  static const List<IncomeItemDetailsModel> itemsDetailsModels = [
    IncomeItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '25%',
    ),
    IncomeItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: itemsDetailsModels
          .map(
            (e) => IncomeItemDetails(itemDetailsData: e),
          )
          .toList(),
    );
  }
}
