import '../../_view_model.imports.dart';

class HeightViewModel extends ViewModel {
  final double heightValue;
  final String height;

  @override
  get props => [heightValue];

  HeightViewModel({
    required this.heightValue,
    required this.height,
  });
}

class HeightViewModelMapper
    extends ViewModelMapper<BmiCalculated, HeightViewModel> {
  const HeightViewModelMapper();

  @override
  execute(event, bus) {
    final model = event.data;
    return HeightViewModel(
      heightValue: model.height.valueInCm,
      height: model.height.toStringInCm(),
    );
  }
}
