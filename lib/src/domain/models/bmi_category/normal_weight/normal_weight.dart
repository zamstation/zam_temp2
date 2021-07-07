import '../_.imports.dart';
import 'normal_weight.rule.dart';

@immutable
class NormalWeight implements BmiCategory {
  static const min = 18.5;
  static const max = 25.0;

  @override
  final name = 'Normal Weight';

  NormalWeight(Bmi bmi) {
    NormalWeightRule(bmi.value).applyAndThrow();
  }

  @override
  String toString() => name;
}
