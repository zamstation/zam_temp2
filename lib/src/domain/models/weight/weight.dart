import '../_.imports.dart';
import 'weight_must_be_positive.rule.dart';

@immutable
class Weight {
  final double value;

  Weight(double value)
      : value = WeightMustBePositiveRule(value).applyAndThrow().value!;

  @override
  String toString() {
    return '${value.toStringAsFixed(1)} kg';
  }

  String toPrecisionString() {
    return '${value.toStringAsFixed(2)} kg';
  }
}
