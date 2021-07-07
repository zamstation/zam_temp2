import '../../../../_library/triangle.shape.dart';
import '../../../_widget.imports.dart';

class WeightIndicator extends StatelessWidget {
  static const _color = Colors.red;

  const WeightIndicator();

  @override
  Widget build(BuildContext context) {
    return Triangle(
      width: 20,
      height: 10,
      strokeColor: _color,
      strokeWidth: 10,
      paintingStyle: PaintingStyle.fill,
    );
  }
}
