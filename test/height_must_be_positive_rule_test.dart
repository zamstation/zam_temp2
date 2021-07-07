import '_.imports.dart';

void main() => HeightMustBePositiveRuleTest().execute();

class HeightMustBePositiveRuleTest extends Test<double, bool> {
  @override
  run(input) => HeightMustBePositiveRule(input / 100).applyAndThrow().isSuccess;

  @override
  final cases = [
    NegativeTestCase(
      when: 'Negative height value',
      input: -23,
      exception: HeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Negative Border height value',
      input: -1,
      exception: HeightNotValidException,
    ),
    NegativeTestCase(
      when: 'Zero height value',
      input: 0,
      exception: HeightNotValidException,
    ),
    ValueTestCase(
      when: 'Positive Border height value',
      then: 'outputs value in cm',
      input: 1,
      output: true,
    ),
    ValueTestCase(
      when: 'Positive height value',
      then: 'outputs value in cm',
      input: 45,
      output: true,
    ),
    ValueTestCase(
      when: 'Positive Extreme height value',
      then: 'outputs value in cm',
      input: 834,
      output: true,
    ),
  ];
}
