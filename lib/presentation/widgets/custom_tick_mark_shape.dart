import 'package:flutter/material.dart';

class CustomTickMarkShape extends SliderTickMarkShape {
  final double tickHeight;
  final double tickWidth;

  const CustomTickMarkShape({this.tickHeight = 8.0, this.tickWidth = 2.0});

  @override
  Size getPreferredSize({
    required SliderThemeData sliderTheme,
    required bool isEnabled,
  }) => Size(tickWidth, tickHeight);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    required bool isEnabled,
  }) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = sliderTheme.inactiveTickMarkColor!
      ..strokeWidth = tickWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(center.dx, -16), Offset(center.dx, -8), paint);
  }
}
