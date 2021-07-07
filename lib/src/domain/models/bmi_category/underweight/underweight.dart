import '../_.imports.dart';
import 'underweight.rule.dart';

@immutable
class Underweight implements BmiCategory {
  static const max = 18.5;

  @override
  final name = 'Underweight';

  Underweight(Bmi bmi) {
    UnderweightRule(bmi.value).applyAndThrow();
  }

  @override
  String toString() => name;
}
