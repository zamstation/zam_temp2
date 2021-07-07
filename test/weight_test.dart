import '_.imports.dart';

void main() => WeightTest().execute();

class WeightTest extends Test<double, String> {
  @override
  run(input) => Weight(input).toString();

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
      output: '1.0 kg',
    ),
    ValueTestCase(
      when: 'Positive weight value',
      then: 'outputs value in kg',
      input: 45,
      output: '45.0 kg',
    ),
    ValueTestCase(
      when: 'Positive Extreme weight value',
      then: 'outputs value in kg',
      input: 834,
      output: '834.0 kg',
    ),
  ];
}
