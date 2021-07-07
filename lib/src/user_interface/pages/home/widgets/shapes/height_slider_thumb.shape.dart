import 'dart:math' show pi;

import '../../../_widget.imports.dart';

class HeightSliderThumbShape extends SliderComponentShape {
  static final _textPainter = TextPainter(
    textDirection: TextDirection.rtl,
    textAlign: TextAlign.center,
  );
  static const _indicatorColor = Colors.red;
  static const _indicatorStrokeWidth = 4.0;
  static const _defaultLabelStyle = TextStyle(
    fontSize: 24.0,
    color: Colors.grey,
  );

  final String label;
  final TextStyle? labelStyle;
  final double trackWidth;

  const HeightSliderThumbShape({
    required this.trackWidth,
    required this.label,
    this.labelStyle = _defaultLabelStyle,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(2, 12);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = _indicatorColor
      ..strokeWidth = _indicatorStrokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.save();
    canvas.rotate(pi / 2);

    final startPoint = Offset(center.dy + (trackWidth / 2), -center.dx);
    final endPoint = Offset(center.dy - (trackWidth / 2), -center.dx);
    canvas.drawLine(startPoint, endPoint, paint);

    _textPainter.text = TextSpan(style: labelStyle, text: label);
    final textPosition = Offset(-72, -center.dx - 20);
    _textPainter.layout();
    _textPainter.paint(canvas, textPosition);

    canvas.restore();
  }
}
