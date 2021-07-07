import '../_.imports.dart';
import 'overweight.rule.dart';

@immutable
class Overweight implements BmiCategory {
  static const min = 25.0;
  static const max = 30.0;

  @override
  final name = 'Overweight';

  Overweight(Bmi bmi) {
    OverweightRule(bmi.value).applyAndThrow();
  }

  @override
  String toString() => name;
}
