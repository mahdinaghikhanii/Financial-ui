import 'package:flutter/material.dart';

class TotalSpending extends StatelessWidget {
  const TotalSpending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Total Expenditures',
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Text(
              '\$32,000',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Text(
                'Taxes',
                style: TextStyle(color: Colors.black38),
              ),
            ),
            Text(
              '\$900',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
