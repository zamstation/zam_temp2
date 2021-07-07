import '../_.imports.dart';
import 'height_must_be_positive.rule.dart';

@immutable
class Height {
  final double value;
  double get valueInCm => value * 100;

  Height(double value)
      : value = HeightMustBePositiveRule(value).applyAndThrow().value!;

  Height.inCm(double value) : this(value / 100);

  @override
  String toString() {
    return '${value.toStringAsFixed(1)} m';
  }

  String toPrecisionString() {
    return '${value.toStringAsFixed(2)} m';
  }

  String toStringInCm() {
    return '${valueInCm.round()} cm';
  }

  String toPrecisionStringInCm() {
    return '${valueInCm.toStringAsFixed(1)} cm';
  }
}
