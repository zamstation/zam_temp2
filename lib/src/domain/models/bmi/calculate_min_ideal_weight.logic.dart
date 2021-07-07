import '../_.imports.dart';
import '../height/height.dart';
import '../weight/weight.dart';
import 'bmi.dart';

@immutable
class CalculateMinIdealWeightLogic extends Logic<Weight> {
  final Height height;

  const CalculateMinIdealWeightLogic(this.height);

  @override
  execute() {
    final weightValue = Bmi.min * (height.value * height.value);
    return Weight(weightValue);
  }
}
