import '../_.imports.dart';
import '../bmi_category/bmi_category.dart';
import '../bmi_category/normal_weight/normal_weight.dart';
import '../height/height.dart';
import '../weight/weight.dart';
import 'calculate_bmi.logic.dart';
import 'calculate_max_ideal_weight.logic.dart';
import 'calculate_min_ideal_weight.logic.dart';

@immutable
class Bmi {
  static const min = NormalWeight.min;
  static const max = NormalWeight.max;

  final Weight weight;
  final Height height;
  final double value;
  BmiCategory get category => BmiCategory(this);

  Bmi(this.weight, this.height)
      : value = CalculateBmiLogic(weight, height).execute();
  Bmi.fromValues(double weightValue, double heightValue)
      : this(Weight(weightValue), Height(heightValue));
  Bmi.fromHeightValue(Weight weight, double heightValue)
      : this(weight, Height(heightValue));
  Bmi.fromWeightValue(double weightValue, Height height)
      : this(Weight(weightValue), height);

  Bmi withWeight(Weight weight) => Bmi(weight, this.height);
  Bmi withHeight(Height height) => Bmi(this.weight, height);
  Bmi withWeightValue(double weightValue) =>
      Bmi.fromWeightValue(weightValue, this.height);
  Bmi withHeightValue(double heightValue) =>
      Bmi.fromHeightValue(this.weight, heightValue);

  Weight getMinIdealWeight() {
    return CalculateMinIdealWeightLogic(height).execute();
  }

  Weight getMaxIdealWeight() {
    return CalculateMaxIdealWeightLogic(height).execute();
  }

  @override
  String toString() {
    return value.toStringAsFixed(1);
  }

  String toPrecisionString() {
    return value.toStringAsFixed(2);
  }
}
