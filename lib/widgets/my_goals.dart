import 'package:finance_ui/widgets/avatar.dart';
import 'package:finance_ui/widgets/custom_card.dart';
import 'package:finance_ui/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class MyGoals extends StatelessWidget {
  const MyGoals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFFEAF2FF),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomHeader(
              title: 'My Goals',
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Avatar(
                  color: Colors.white,
                  iconData: Icons.car_rental,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Buy A Car',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _Progress(progress: 23),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Progress extends StatelessWidget {
  const _Progress({
    Key? key,
    required this.progress,
  }) : super(key: key);

  final int progress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CustomPaint(
              painter: _ProgressPainter(progress),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$progress%',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class _ProgressPainter extends CustomPainter {
  _ProgressPainter(this.progress);

  final int progress;

  @override
  void paint(Canvas canvas, Size size) {
    final background = Paint()
      ..color = Colors.black38
      ..style = PaintingStyle.stroke;
    final foreground = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final backgroundPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0);

    final foregroundPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * progress.clamp(0, 100) / 100, 0);

    canvas.drawPath(backgroundPath, background);
    canvas.drawPath(foregroundPath, foreground);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
