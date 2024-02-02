import 'package:flutter/material.dart';

class SpendingSummary extends StatelessWidget {
  const SpendingSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'All spending on Monday',
          style: TextStyle(color: Colors.black38),
        ),
        Text(
          '\$12,800',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
        ),
      ],
    );
  }
}
