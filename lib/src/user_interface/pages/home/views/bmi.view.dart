import '../../_view.imports.dart';
import '../view_models/bmi.view_model.dart';
import '../widgets/_.index.dart';

class BmiView extends DataWidget<BmiViewModel> {
  const BmiView();

  @override
  Widget buildUsingData(BuildContext context, BmiViewModel data) {
    return Hero(
      tag: 'BmiCard',
      child: BmiCard(
        onClick: () => Navigator.pushNamed(context, Pages.bmiDetails),
        bmiTextWidget: BmiText(
          data.integralPart,
          data.fractionalPart,
        ),
        bmiCategoryTextWidget: BmiCategoryText(
          data.category,
          colorCode: data.colorCode,
        ),
      ),
    );
  }
}
