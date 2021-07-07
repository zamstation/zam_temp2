import '../../_view_model.imports.dart';

@immutable
class BmiCategoryViewModel extends TextViewModel {
  final int colorCode;

  BmiCategoryViewModel({
    required String text,
    required this.colorCode,
  }) : super(text);
}

class BmiCategoryViewModelMapper
    extends ViewModelMapper<BmiCalculated, BmiCategoryViewModel> {
  static const _colorCodes = {
    Overweight: 0xFFFFA500,
    Obesity: 0xFFFF0000,
    NormalWeight: 0xFF4BB543,
    Underweight: 0xFFFFA500,
    Object: 0xFFFF0000,
  };

  const BmiCategoryViewModelMapper();

  @override
  execute(event, bus) {
    final bmiCategory = event.data.category;

    return BmiCategoryViewModel(
      text: bmiCategory.toString(),
      colorCode: _colorCodes[bmiCategory.runtimeType]!,
    );
  }
}
