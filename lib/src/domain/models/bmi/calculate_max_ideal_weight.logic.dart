import '../_.imports.dart';
import '../height/height.dart';
import '../weight/weight.dart';
import 'bmi.dart';

@immutable
class CalculateMaxIdealWeightLogic extends Logic<Weight> {
  final Height height;

  const CalculateMaxIdealWeightLogic(this.height);

  @override
  execute() {
    final weightValue = Bmi.max * (height.value * height.value);
    return Weight(weightValue);
  }
}
