import '../../_section.imports.dart';
import '../views/_.index.dart';

class HeightSection extends StatelessWidget {
  static const _padding = EdgeInsets.only(top: 60, bottom: 16);

  const HeightSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _padding,
      child: HeightView(),
    );
  }
}
