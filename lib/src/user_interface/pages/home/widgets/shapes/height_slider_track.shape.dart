import 'dart:math' show pi;

import '../../../_widget.imports.dart';

class HeightSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  static const _tickHeight = 16;
  static const _tickColor = Color(0xF69E9E9E);
  static const _longTickHeight = _tickHeight * 2;
  static const _longTickColor = Colors.grey;
  static final _textPainter = TextPainter(
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.right,
  );
  static const _defaultTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey,
  );

  final int min;
  final int max;
  final int value;
  final double height;
  final TextStyle? textStyle;

  const HeightSliderTrackShape({
    required this.min,
    required this.max,
    required this.value,
    required this.height,
    this.textStyle = _defaultTextStyle,
  });

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
  }) {
    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0)
      return;

    final canvas = context.canvas;
    final trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final tickCount = max;
    final tickSpacing = trackRect.width / max;

    final tickPaint = Paint()
      ..color = _tickColor
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final longTickPaint = Paint()
      ..color = _longTickColor
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    canvas.save();
    canvas.rotate(pi / 2);

    final dx = trackRect.bottom;
    // Draw ticks every 5 points.
    for (var index = 0; index <= tickCount; index += 5) {
      final dy = -(tickSpacing * index);
      // Draw long ticks every 25 points.
      if (index % 25 == 0) {
        canvas.drawLine(
          Offset(dx - _longTickHeight, dy),
          Offset(dx, dy),
          longTickPaint,
        );
      } else {
        canvas.drawLine(
          Offset(dx - _tickHeight, dy),
          Offset(dx, dy),
          tickPaint,
        );
      }
    }

    // Draws labels every 50 points.
    for (var index = 0; index <= tickCount; index += 50) {
      // Skips drawing the label when the thumb is nearby.
      final distance = this.value - index;
      if (distance > -5 && distance < 15) continue;
      // Draws the label.
      final position = Offset(
        trackRect.bottom - 60,
        -(tickSpacing * index) - (tickSpacing * 9),
      );
      _drawLabel(canvas, position, index);
    }
    canvas.restore();
  }

  void _drawLabel(Canvas canvas, Offset position, int index) {
    _textPainter.text = TextSpan(
      style: textStyle,
      text: '$index',
    );
    _textPainter.layout(minWidth: 40);
    _textPainter.paint(canvas, position);
  }
}
