import '../../../_widget.imports.dart';

class IdealWeightText extends StatelessWidget {
  final String min;
  final String max;

  const IdealWeightText(this.min, this.max);

  @override
  Widget build(BuildContext context) {
    return Text('Ideal weight: $min to $max');
  }
}
