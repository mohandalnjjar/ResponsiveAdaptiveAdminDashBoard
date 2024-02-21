import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_itme_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllEXpensesItemListView extends StatefulWidget {
  const AllEXpensesItemListView({
    super.key,
  });

  @override
  State<AllEXpensesItemListView> createState() =>
      _AllEXpensesItemListViewState();
}

class _AllEXpensesItemListViewState extends State<AllEXpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        image: Assets.imagesMoneys,
        title: 'Balance',
        date: 'Aug 2024',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesCardReceive,
        title: 'inCome',
        date: 'Aug 2024',
        price: r'$2241'),
    const AllExpensesItemModel(
        image: Assets.imagesCardSend,
        title: 'Expenses',
        date: 'Aug 2024',
        price: r'$2241')
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var itemModel = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex != index) {
                      selectedIndex = index;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    itemModel: itemModel,
                    isSelected: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex != index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }
                },
                child: AllExpensesItem(
                  itemModel: itemModel,
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }
}
