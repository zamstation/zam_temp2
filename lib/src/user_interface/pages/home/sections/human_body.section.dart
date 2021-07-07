import '../../_section.imports.dart';
import '../views/_.index.dart';

class HumanBodySection extends StatelessWidget {
  static const _padding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);

  const HumanBodySection();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      alignment: Alignment.bottomCenter,
      child: Container(
        child: HumanBodyView(),
      ),
    );
  }
}
