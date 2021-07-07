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
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Color(colorCode)),
    );
  }
}
