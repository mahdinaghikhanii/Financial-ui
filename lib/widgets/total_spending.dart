import 'package:flutter/material.dart';

class TotalSpending extends StatelessWidget {
  const TotalSpending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
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
        const SizedBox(height: 8),
        Row(
          children: const [
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
