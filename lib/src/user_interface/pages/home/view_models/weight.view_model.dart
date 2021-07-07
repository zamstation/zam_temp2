import '../../_view_model.imports.dart';
import 'weight_selector_item.view_model.dart';

class WeightViewModel extends ListViewModel<WeightSelectorItemViewModel> {
  static final _items = Iterable.generate(200)
      .skip(1)
      .map((index) => WeightSelectorItemViewModel(index))
      .toList();

  final int initialValue;

  int get initialIndex =>
      items.indexWhere((item) => item.value == initialValue);

  WeightViewModel({required this.initialValue}) : super(_items);
}

class WeightSelectorViewModelMapper
    extends ViewModelMapper<InitialEvent, WeightViewModel> {
  const WeightSelectorViewModelMapper();

  @override
  execute(event, bus) {
    return WeightViewModel(initialValue: event.initialWeightValue);
  }
}
