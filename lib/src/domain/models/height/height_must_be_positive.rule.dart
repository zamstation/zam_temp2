import '../_.imports.dart';
import 'height_not_valid.exception.dart';

@immutable
class HeightMustBePositiveRule extends CompositeRule<double, double>
    with ExceptionThrowingAbility {
  @override
  final fact;

  const HeightMustBePositiveRule(this.fact);

  @override
  build() => PositiveDecimalRule(fact);

  @override
  buildException(response) => HeightNotValidException(fact);
}
