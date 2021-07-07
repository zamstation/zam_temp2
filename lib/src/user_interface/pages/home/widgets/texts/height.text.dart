import '../../../_widget.imports.dart';

class HeightText extends StatelessWidget {
  final String text;

  const HeightText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
