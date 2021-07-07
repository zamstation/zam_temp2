import '../../_section.imports.dart';
import '../views/_.index.dart';

class WeightSection extends StatelessWidget {
  static const _padding = EdgeInsets.only(top: 8, bottom: 24);

  const WeightSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      alignment: Alignment.center,
      child: WeightView(),
    );
  }
}
