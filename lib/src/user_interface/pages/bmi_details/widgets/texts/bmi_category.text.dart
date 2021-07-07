import '../../../_widget.imports.dart';

class BmiCategoryText extends StatelessWidget {
  final String text;
  final int colorCode;

  const BmiCategoryText(
    this.text, {
    required this.colorCode,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final hslColor = HSLColor.fromColor(Color(colorCode));
    final color = (brightness == Brightness.light)
        ? hslColor.withLightness(hslColor.lightness - 0.2).toColor()
        : hslColor.toColor();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
