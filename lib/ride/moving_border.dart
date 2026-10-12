import 'package:flutter/material.dart';

// class MovingBorderPainter extends CustomPainter {
//   final Animation<double> animation;

//   MovingBorderPainter(this.animation) : super(repaint: animation);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final rect = Rect.fromCircle(center: Offset(18, 20),radius: 30.0 );

//     final path = Path()
//       ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(20)));

//     final borderPaint = Paint()
//       ..color = Colors.yellow
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;

//     canvas.drawPath(path, borderPaint);
//     final metric = path.computeMetrics().first;
//     if (animation.value < 5) {
//       final start = (animation.value % 1) * metric.length;
//       final movingLine = metric.extractPath(start, start + 80);

//       final movingPaint = Paint()
//         ..color = Colors.yellow
//         ..style = PaintingStyle.stroke
//         ..strokeWidth = 4
//         ..strokeCap = StrokeCap.round;

//       canvas.drawPath(movingLine, movingPaint);
//     }
//   }

//   @override
//   bool shouldRepaint(covariant MovingBorderPainter oldDelegate) {
//     return true;
//   }
// }
class MovingBorderPainter extends CustomPainter {
  final Animation<double> animation;

  MovingBorderPainter(this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    // Distance between button and outer border
    const gap = 4.0;

    final rect = Rect.fromLTWH(
      gap,
      gap,
      size.width - gap * 2,
      size.height - gap * 2,
    );

    final path = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          rect,
          const Radius.circular(30),
        ),
      );

    final metric = path.computeMetrics().first;

    // 1. Permanent thin outer border
    final borderPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawPath(path, borderPaint);

    // 2. Moving thin line
    if (animation.value < 1) {
      final start = (animation.value % 1) * metric.length;

      final movingLine = metric.extractPath(
        start,
        start + 25,
      );

      final movingPaint = Paint()
        ..color = Colors.white
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2
        ..strokeCap = StrokeCap.round;

      canvas.drawPath(movingLine, movingPaint);
    }
  }

  @override
  bool shouldRepaint(
    covariant MovingBorderPainter oldDelegate,
  ) {
    return true;
  }
}