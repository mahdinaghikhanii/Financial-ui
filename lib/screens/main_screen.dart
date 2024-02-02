import 'package:flutter/material.dart';

import '../widgets/current_balance.dart';
import '../widgets/my_goals.dart';
import '../widgets/transactions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CurrentBalance(
              balance: '245,000.65',
              growth: '1.76',
            ),
            SizedBox(height: 30),
            Transactions(),
            SizedBox(height: 20),
            MyGoals(),
          ],
        ),
      ),
    );
  }
}
