import 'package:finance_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    Key? key,
    required this.title,
    required this.color,
    required this.time,
    required this.iconData,
    required this.cost,
  }) : super(key: key);

  final String title;
  final Color color;
  final String time;
  final IconData iconData;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(color: color, iconData: iconData),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                time,
                style: const TextStyle(fontSize: 12, color: Colors.black38),
              ),
            ],
          ),
        ),
        Text(
          '-\$$cost',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
