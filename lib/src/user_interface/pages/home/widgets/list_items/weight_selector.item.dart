import '../../../_widget.imports.dart';

class WeightSelectorItem extends StatelessWidget {
  final Widget child;

  const WeightSelectorItem({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: child,
    );
  }
}
