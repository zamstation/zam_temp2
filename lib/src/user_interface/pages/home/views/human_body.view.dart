import '../../_view.imports.dart';
import '../view_models/human_body.view_model.dart';
import '../widgets/_.index.dart';

class HumanBodyView extends DataWidget<HumanBodyViewModel> {
  const HumanBodyView();

  @override
  Widget buildUsingData(BuildContext context, HumanBodyViewModel data) {
    final screenSize = MediaQuery.of(context).size;

    return HumanBodyImage(
      width: _calculateWidth(screenSize, data.weight),
      height: _calculateHeight(screenSize, data.height),
    );
  }

  double _calculateWidth(Size screenSize, int weight) {
    // final scaleFactor = screenSize.width / 160;
    final imageWidth = weight * 4.0;
    return imageWidth;
  }

  double _calculateHeight(Size screenSize, int height) {
    final scaleFactor = (screenSize.height - 320) / 220;
    final imageHeight = height * scaleFactor;
    return imageHeight;
  }
}
