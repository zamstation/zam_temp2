import '../../_view_model.imports.dart';

class HumanBodyViewModel extends ViewModel {
  final int weight;
  final int height;

  @override
  get props => [weight, height];

  HumanBodyViewModel({
    required this.weight,
    required this.height,
  });
}

class HumanBodyViewModelMapper
    extends ViewModelMapper<BmiCalculated, HumanBodyViewModel> {
  const HumanBodyViewModelMapper();

  @override
  execute(event, bus) {
    final model = event.data;
    return HumanBodyViewModel(
      weight: model.weight.value.toInt(),
      height: model.height.valueInCm.toInt(),
    );
  }
}
