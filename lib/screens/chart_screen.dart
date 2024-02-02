import 'package:flutter/material.dart';

import '../widgets/spending_chart.dart';
import '../widgets/spending_summary.dart';
import '../widgets/spending_types.dart';
import '../widgets/total_spending.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
          child: SpendingTypes(),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SpendingSummary(),
                SizedBox(height: 12),
                Expanded(child: SpendingChart()),
                SizedBox(height: 12),
                TotalSpending(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
