import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itme_model.dart';
import 'package:responsive_dash_board/widgets/in_active&expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected == true) {
      return ActiveAllExpensesItem(itemModel: itemModel);
    } else {
      return InActiveAllExpensesItem(itemModel: itemModel);
    }
  }
}
