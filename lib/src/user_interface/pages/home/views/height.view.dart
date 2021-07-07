import '../widgets/_.index.dart';

import '../../_view.imports.dart';
import '../view_models/height.view_model.dart';

class HeightView extends DataWidget<HeightViewModel> {
  const HeightView();

  @override
  Widget buildUsingData(BuildContext context, HeightViewModel data) {
    return HeightSlider(
      value: data.heightValue,
      label: data.height,
      onChanged: (value) => context.dispatch(HeightProvided(value.toInt())),
    );
  }
}
