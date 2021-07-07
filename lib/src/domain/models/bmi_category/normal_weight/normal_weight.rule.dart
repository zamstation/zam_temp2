import '../_.imports.dart';
import 'normal_weight.dart';

@immutable
class NormalWeightRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  NormalWeightRule(this.fact);

  @override
  build() => DecimalRangeRule(fact, NormalWeight.min, NormalWeight.max);

  @override
  buildException(response) => InvalidBmiCategoryException();
}
