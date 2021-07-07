import '../_.imports.dart';
import 'obesity.dart';

@immutable
class ObesityRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  ObesityRule(this.fact);

  @override
  build() => GreaterThanDecimalRule(fact, Obesity.min);

  @override
  buildException(response) => InvalidBmiCategoryException();
}
