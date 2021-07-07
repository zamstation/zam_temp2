import '../_.imports.dart';
import '../height/height.dart';
import '../weight/weight.dart';

@immutable
class CalculateBmiLogic extends Logic<double> {
  final Weight weight;
  final Height height;

  const CalculateBmiLogic(this.weight, this.height);

  @override
  execute() {
    return weight.value / (height.value * height.value);
  }
}
