import 'package:flutter/material.dart';

import 'custom_card.dart';

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({
    Key? key,
    required this.balance,
    required this.growth,
  }) : super(key: key);

  final String balance;
  final String growth;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: Colors.black,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mahdi.jpg'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Current Balance',
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 16),
            Text(
              '\$$balance',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Growth Of $growth%',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
