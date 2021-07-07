import '../_.imports.dart';
import 'overweight.dart';

@immutable
class OverweightRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  OverweightRule(this.fact);

  @override
  build() => DecimalRangeRule(fact, Overweight.min, Overweight.max);

  @override
  buildException(response) => InvalidBmiCategoryException();
}
