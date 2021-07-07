import '../../../_widget.imports.dart';

class BmiText extends StatelessWidget {
  final String text;

  const BmiText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline2,
    );
  }
}
