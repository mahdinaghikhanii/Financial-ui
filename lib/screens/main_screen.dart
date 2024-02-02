import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/current_balance.dart';
import '../widgets/my_goals.dart';
import '../widgets/transactions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool loading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: loading == true
          ? const Center(
              child: CupertinoActivityIndicator(
              radius: 15,
            ))
          : const SingleChildScrollView(
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
