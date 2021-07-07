import '../../../_widget.imports.dart';

class BmiText extends StatelessWidget {
  final String bmiIntegralPartText;
  final String bmiFractionalPartText;

  const BmiText(
    this.bmiIntegralPartText,
    this.bmiFractionalPartText,
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: bmiIntegralPartText,
            style: Theme.of(context).textTheme.headline2,
          ),
          TextSpan(
            text: '.',
            style: Theme.of(context).textTheme.headline4,
          ),
          TextSpan(
            text: bmiFractionalPartText,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
