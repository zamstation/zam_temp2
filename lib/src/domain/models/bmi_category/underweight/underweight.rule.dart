import '../_.imports.dart';
import 'underweight.dart';

@immutable
class UnderweightRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  UnderweightRule(this.fact);

  @override
  build() => LesserThanDecimalRule(fact, Underweight.max);

  @override
  buildException(response) => InvalidBmiCategoryException();
}
