import '../../../_widget.imports.dart';

class WeightText extends StatelessWidget {
  final String text;

  const WeightText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
