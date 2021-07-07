import '../_.imports.dart';
import 'weight_not_valid.exception.dart';

@immutable
class WeightMustBePositiveRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  const WeightMustBePositiveRule(this.fact);

  @override
  build() => PositiveDecimalRule(fact);

  @override
  buildException(response) => WeightNotValidException(fact);
}
