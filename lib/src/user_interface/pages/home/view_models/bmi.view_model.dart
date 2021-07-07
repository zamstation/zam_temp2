import 'package:zam_event_bus/zam_event_bus.dart';

import '../../_view_model.imports.dart';

class BmiViewModel extends ViewModel {
  final String integralPart;
  final String fractionalPart;
  final String category;
  final int colorCode;

  @override
  get props => [integralPart, fractionalPart];

  BmiViewModel({
    required this.integralPart,
    required this.fractionalPart,
    required this.category,
    required this.colorCode,
  });
}

class BmiViewModelMapper extends ViewModelMapper<BmiCalculated, BmiViewModel> {
  static const _colorCodes = {
    Overweight: 0xFFFFA500,
    Obesity: 0xFFFF0000,
    NormalWeight: 0xFF4BB543,
    Underweight: 0xFFFFA500,
    Object: 0xFFFF0000,
  };

  const BmiViewModelMapper();

  @override
  execute(event, bus) {
    final model = event.data;
    final bmi = (model.value * 10).round();

    return BmiViewModel(
      integralPart: (bmi ~/ 10).toString(),
      fractionalPart: bmi.remainder(10).toString(),
      category: model.category.toString(),
      colorCode: _colorCodes[model.category.runtimeType]!,
    );
  }
}

class DetailedBmiViewModel extends BmiViewModel {
  DetailedBmiViewModel(BmiViewModel bmiViewModel)
      : super(
          integralPart: bmiViewModel.integralPart,
          fractionalPart: bmiViewModel.fractionalPart,
          category: bmiViewModel.category,
          colorCode: bmiViewModel.colorCode,
        );
}

class BmiCardClicked {
  final bool isSelected;

  const BmiCardClicked(this.isSelected);
}

class BmiCardClickedHandler
    extends ViewModelMapper<BmiCardClicked, DetailedBmiViewModel> {
  @override
  execute(BmiCardClicked event, EventBus bus) {
    throw UnimplementedError();
  }
}
