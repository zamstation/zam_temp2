import '../../_view_model.imports.dart';
import 'weight_selector_item.view_model.dart';

class SelectedWeightViewModel extends WeightSelectorItemViewModel {
  SelectedWeightViewModel(int value) : super(value);

  bool isSameAs(WeightSelectorItemViewModel other) {
    return value == other.value;
  }

  bool isNearby(WeightSelectorItemViewModel other) {
    return (value - other.value).abs() == 1;
  }
}

class SelectedWeightViewModelMapper
    extends ViewModelMapper<BmiCalculated, SelectedWeightViewModel> {
  const SelectedWeightViewModelMapper();

  @override
  execute(event, bus) {
    final weightValue = event.data.weight.value.toInt();
    return SelectedWeightViewModel(weightValue);
  }
}
