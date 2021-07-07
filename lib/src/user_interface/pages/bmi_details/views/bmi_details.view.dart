import '../../_view.imports.dart';
import '../widgets/_.index.dart';
import '../view_models/_.index.dart';

class BmiDetailsView extends DataWidget<BmiDetailsViewModel> {
  const BmiDetailsView();

  @override
  Widget buildUsingData(BuildContext context, BmiDetailsViewModel data) {
    return Hero(
      tag: 'BmiCard',
      child: BmiDetailsCard(
        onClick: () => Navigator.pop(context),
        bmiTextWidget: BmiText(data.value),
        bmiTitleTextWidget: BmiTitleText(),
        bmiCategoryTextWidget:
            BmiCategoryText(data.category, colorCode: data.colorCode),
        idealWeightTextWidget:
            IdealWeightText(data.minIdealWeight, data.maxIdealWeight),
      ),
    );
  }
}
