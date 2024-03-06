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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != 0) {
                  selectedIndex = 0;
                }
              });
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != 1) {
                  selectedIndex = 1;
                }
              });
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (selectedIndex != 2) {
                  selectedIndex = 2;
                }
              });
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isSelected: selectedIndex == 2,
            ),
          ),
        )
      ],
    );
  }
}
