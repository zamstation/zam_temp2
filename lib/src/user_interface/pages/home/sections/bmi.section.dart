import '../../_section.imports.dart';
import '../views/_.index.dart';

class BmiSection extends StatelessWidget {
  static const _padding = EdgeInsets.fromLTRB(40, 80, 40, 0);

  const BmiSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      alignment: Alignment.topCenter,
      child: BmiView(),
    );
  }
}
