import 'package:zam_event_bus/zam_event_bus.dart';

import '../../_view_model.imports.dart';

class BmiDetailsViewModel extends ViewModel {
  final String value;
  final String category;
  final int colorCode;
  final String minIdealWeight;
  final String maxIdealWeight;

  @override
  get props => [value];

  BmiDetailsViewModel({
    required this.value,
    required this.category,
    required this.colorCode,
    required this.minIdealWeight,
    required this.maxIdealWeight,
  });
}

class BmiDetailsViewModelMapper
    extends ViewModelMapper<BmiCalculated, BmiDetailsViewModel> {
  static const _colorCodes = {
    Overweight: 0xFFFFA500,
    Obesity: 0xFFFF0000,
    NormalWeight: 0xFF54cf4a,
    Underweight: 0xFFFFA500,
    Object: 0xFFFF0000,
  };

  const BmiDetailsViewModelMapper();

  @override
  execute(event, bus) {
    final model = event.data;

    return BmiDetailsViewModel(
      value: model.toString(),
      category: model.category.toString(),
      colorCode: _colorCodes[model.category.runtimeType]!,
      minIdealWeight: event.minIdealWeight.toString(),
      maxIdealWeight: event.maxIdealWeight.toString(),
    );
  }
}
