import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: const Row(
            children: [
              Text(
                'See all',
                style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black38,
              )
            ],
          ),
        )
      ],
    );
  }
}
