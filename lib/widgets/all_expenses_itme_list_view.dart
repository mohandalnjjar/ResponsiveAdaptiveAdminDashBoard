import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itme_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllEXpensesItemListView extends StatelessWidget {
  const AllEXpensesItemListView({
    super.key,
  });
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        date: 'Aug 2024',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesCardReceive,
        title: 'inCome',
        date: 'Aug 2024',
        price: r'$2241'),
    AllExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'Aug 2024',
        price: r'$2241')
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var itemModel = e.value;
          if (index == 1) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(
                  itemModel: itemModel,
                  isSelected: true,
                ),
              ),
            );
          } else {
            return Expanded(
              child: AllExpensesItem(
                itemModel: itemModel,
                isSelected: true,
              ),
            );
          }
        },
      ).toList(),
    );
  }
}
