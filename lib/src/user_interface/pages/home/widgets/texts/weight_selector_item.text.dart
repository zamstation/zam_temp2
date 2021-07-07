import '../../../_widget.imports.dart';

class WeightSelectorItemText extends StatelessWidget {
  final String text;
  final bool isSelected;

  const WeightSelectorItemText(
    this.text, {
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Text(
      text,
      style: isSelected ? textTheme.headline4 : textTheme.headline5,
    );
  }
}
