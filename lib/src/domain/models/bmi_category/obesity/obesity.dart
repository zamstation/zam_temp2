import '../_.imports.dart';
import 'obesity.rule.dart';

@immutable
class Obesity implements BmiCategory {
  static const min = 30.0;

  @override
  final name = 'Obesity';

  Obesity(Bmi bmi) {
    ObesityRule(bmi.value).applyAndThrow();
  }

  @override
  String toString() => name;
}
