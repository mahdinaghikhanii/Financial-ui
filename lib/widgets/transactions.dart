import 'package:finance_ui/widgets/transaction.dart';
import 'package:flutter/material.dart';

import 'custom_header.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Last Transactions',
          onPressed: () {},
        ),
        ...latestTransactions
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Transaction(
                    title: e['name'],
                    time: e['date'],
                    cost: e['cost'],
                    color: e['color'],
                    iconData: e['icon'],
                  ),
                ))
            .toList()
      ],
    );
  }
}

final latestTransactions = <Map<String, dynamic>>[
  {
    'name': 'Shopping',
    'icon': Icons.storefront,
    'date': '2022/01/06 | 10:34 AM',
    'cost': '98.21',
    'color': const Color(0xFFEBFDEE),
  },
  {
    'name': 'Google Subscription',
    'icon': Icons.shop,
    'date': '2022/02/03 | 10:34 AM',
    'cost': '43.06',
    'color': const Color(0xFFEDE5F7),
  },
  {
    'name': 'Buy Windows',
    'icon': Icons.window,
    'date': '2022/01/03 | 10:34 AM',
    'cost': '87.61',
    'color': const Color(0xFFFFEBC6),
  },
];
