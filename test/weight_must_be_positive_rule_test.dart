import '_.imports.dart';

void main() => WeightMustBePositiveRuleTest().execute();

class WeightMustBePositiveRuleTest extends Test<double, bool> {
  @override
  run(input) => WeightMustBePositiveRule(input).applyAndThrow().isSuccess;

  @override
  final cases = [
    NegativeTestCase(
      when: 'Negative weight value',
      input: -23,
      exception: WeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Negative Border weight value',
      input: -1,
      exception: WeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Zero weight value',
      input: 0,
      exception: WeightNotValidException,
    ),
    ValueTestCase(
      when: 'Positive Border weight value',
      then: 'outputs value in kg',
      input: 1,
      output: true,
    ),
    ValueTestCase(
      when: 'Positive weight value',
      then: 'outputs value in kg',
      input: 45,
      output: true,
    ),
    ValueTestCase(
      when: 'Positive Extreme weight value',
      then: 'outputs value in kg',
      input: 834,
      output: true,
    ),
  ];
}
