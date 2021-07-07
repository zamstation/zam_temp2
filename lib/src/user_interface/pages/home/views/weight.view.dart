import '../../_view.imports.dart';
import '../view_models/selected_weight.view_model.dart';
import '../view_models/weight.view_model.dart';
import '../widgets/_.index.dart';

class WeightView extends DataWidget<WeightViewModel> {
  const WeightView();

  @override
  Widget buildUsingData(BuildContext context, WeightViewModel data) {
    return WeightSelector(
      itemCount: data.itemCount,
      initialIndex: data.initialIndex,
      onChanged: (index) => context.dispatch(WeightProvided(data[index].value)),
      itemBuilder: (index) => WeightSelectorItem(
        child: View<SelectedWeightViewModel>(
          builder: (selectedItem) => WeightSelectorItemText(
            data[index].text,
            isSelected: selectedItem.isSameAs(data[index]),
          ),
        ),
      ),
    );
  }
}
