import '../_.imports.dart';
import '../bmi/bmi.dart';
import 'normal_weight/normal_weight.dart';
import 'obesity/obesity.dart';
import 'overweight/overweight.dart';
import 'underweight/underweight.dart';

@immutable
abstract class BmiCategory {
  String get name;

  factory BmiCategory(Bmi bmi) {
    return FirstErrorlessBlock<BmiCategory>([
      () => Underweight(bmi),
      () => NormalWeight(bmi),
      () => Overweight(bmi),
      () => Obesity(bmi),
    ]).execute();
  }

  @override
  String toString() => name;
}
