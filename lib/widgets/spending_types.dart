import 'package:flutter/material.dart';

class SpendingTypes extends StatelessWidget {
  const SpendingTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final spendingType = spendingTypes[index];
        return _SpendingTypeSelector(
          text: spendingType,
          onPressed: () {},
          selected: index == 1,
        );
      },
      separatorBuilder: (_, __) => const SizedBox(width: 8),
      itemCount: spendingTypes.length,
    );
  }
}

class _SpendingTypeSelector extends StatelessWidget {
  const _SpendingTypeSelector({
    Key? key,
    this.selected = false,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final bool selected;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
      style: OutlinedButton.styleFrom(
        primary: selected ? Colors.black : Colors.grey,
        backgroundColor: selected ? const Color(0xFFF5FFA3) : null,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

final spendingTypes = <String>[
  'All',
  'Travel',
  'Buy Games',
  'Internet',
  'Electricity',
];
